CREATE TABLE `Climber` (
  `name` varchar(50) NOT NULL DEFAULT '',
  `DOB` varchar(50) NOT NULL DEFAULT '',
  `phone_number` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `emergency_contact_name` varchar(50) DEFAULT NULL,
  `emergency_contact_email` varchar(50) DEFAULT NULL,
  `emergency_contact_pnumber` varchar(50) DEFAULT NULL,
  `park_location` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`name`,`DOB`)
)

CREATE TABLE `Course` (
  `name` varchar(50) NOT NULL,
  `difficulty` varchar(50) DEFAULT NULL,
  `park_location` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`name`)
)

CREATE TABLE `CourseFailureReport` (
  `course_name` varchar(50) NOT NULL DEFAULT '',
  `monitor_name` varchar(50) NOT NULL DEFAULT '',
  `monitor_dob` varchar(50) NOT NULL DEFAULT '',
  `date` varchar(50) NOT NULL DEFAULT '',
  `element_number` int NOT NULL DEFAULT '0',
  `description` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`course_name`,`monitor_name`,`monitor_dob`,`date`,`element_number`)
)

CREATE TABLE `CourseInspectionLog` (
  `course_name` varchar(50) NOT NULL DEFAULT '',
  `monitor_name` varchar(50) NOT NULL DEFAULT '',
  `monitor_dob` varchar(50) NOT NULL DEFAULT '',
  `date` varchar(50) NOT NULL DEFAULT '',
  `result` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`course_name`,`monitor_name`,`monitor_dob`,`date`)
)

CREATE TABLE `Harness` (
  `location` varchar(50) NOT NULL DEFAULT '',
  `size` char(1) NOT NULL DEFAULT '',
  `number` int NOT NULL DEFAULT '0',
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`location`,`size`,`number`)
)

CREATE TABLE `HarnessInspectionLog` (
  `staff_name` varchar(50) NOT NULL DEFAULT '',
  `staff_dob` varchar(50) NOT NULL DEFAULT '',
  `location` varchar(50) NOT NULL DEFAULT '',
  `size` char(1) NOT NULL DEFAULT '',
  `harness_number` int NOT NULL DEFAULT '0',
  `date` varchar(50) NOT NULL DEFAULT '',
  `result` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`staff_name`,`staff_dob`,`location`,`size`,`harness_number`,`date`)
)

CREATE TABLE `Lower` (
  `monitor_name` varchar(50) NOT NULL DEFAULT '',
  `monitor_dob` varchar(50) NOT NULL DEFAULT '',
  `element_number` int NOT NULL DEFAULT '0',
  `course_name` varchar(50) NOT NULL DEFAULT '',
  `supervisor_name` varchar(50) NOT NULL DEFAULT '',
  `supervisor_dob` varchar(50) NOT NULL DEFAULT '',
  `date_time` varchar(50) NOT NULL DEFAULT '',
  `evaluation` varchar(50) DEFAULT NULL,
  `lower_type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`monitor_name`,`monitor_dob`,`element_number`,`course_name`,`supervisor_name`,`supervisor_dob`,`date_time`)
)

CREATE TABLE `M1` (
  `m1_name` varchar(50) NOT NULL DEFAULT '',
  `m1_dob` varchar(50) NOT NULL DEFAULT '',
  `brief_train_status` tinyint(1) DEFAULT NULL,
  `high_plats` int DEFAULT NULL,
  `mid_es` int DEFAULT NULL,
  PRIMARY KEY (`m1_name`,`m1_dob`)
)

CREATE TABLE `Manager` (
  `manager_name` varchar(50) NOT NULL DEFAULT '',
  `manager_dob` varchar(50) NOT NULL DEFAULT '',
  `manager_park_location` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`manager_name`,`manager_dob`)
)

CREATE TABLE `Obstacle` (
  `element_number` int NOT NULL DEFAULT '0',
  `course_name` varchar(50) NOT NULL DEFAULT '',
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`element_number`,`course_name`)
)

CREATE TABLE `Park` (
  `location` varchar(50) NOT NULL,
  `capacity` int DEFAULT NULL,
  PRIMARY KEY (`location`)
)

CREATE TABLE `PayRate` (
  `staff_rank` varchar(50) NOT NULL,
  `rate` int DEFAULT NULL,
  PRIMARY KEY (`staff_rank`)
)

CREATE TABLE `Platform` (
  `element_number` int NOT NULL DEFAULT '0',
  `course_name` varchar(50) NOT NULL DEFAULT '',
  `staff_access` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`element_number`,`course_name`)
)

CREATE TABLE `ServiceReport` (
  `harness_number` int NOT NULL DEFAULT '0',
  `location` varchar(50) NOT NULL DEFAULT '',
  `size` char(1) NOT NULL DEFAULT '',
  `date` varchar(50) NOT NULL DEFAULT '',
  `reason` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`harness_number`,`location`,`size`,`date`)
)

CREATE TABLE `Staff` (
  `name` varchar(50) NOT NULL DEFAULT '',
  `DOB` varchar(50) NOT NULL DEFAULT '',
  `pay_method` varchar(50) DEFAULT NULL,
  `date_hired` varchar(50) DEFAULT NULL,
  `staff_rank` varchar(50) DEFAULT NULL,
  `phone_number` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `emergency_contactact_name` varchar(50) DEFAULT NULL,
  `emergency_contact_email` varchar(50) DEFAULT NULL,
  `emergency_contact_pnumber` varchar(50) DEFAULT NULL,
  `employ_type` varchar(50) DEFAULT NULL,
  `park_loc` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`name`,`DOB`)
)

CREATE TABLE `Super` (
  `super_name` varchar(50) NOT NULL DEFAULT '',
  `super_dob` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`super_name`,`super_dob`)
)

CREATE TABLE `Ticket` (
  `date` varchar(50) NOT NULL DEFAULT '',
  `climber_name` varchar(50) NOT NULL DEFAULT '',
  `climber_dob` varchar(50) NOT NULL DEFAULT '',
  `type` varchar(50) DEFAULT NULL,
  `time_slot` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`date`,`climber_name`,`climber_dob`)
)

CREATE TABLE `TicketPrice` (
  `type` varchar(50) NOT NULL,
  `price` int DEFAULT NULL,
  PRIMARY KEY (`type`)
)

CREATE TABLE `Timecard` (
  `staff_name` varchar(50) NOT NULL DEFAULT '',
  `staff_dob` varchar(50) NOT NULL DEFAULT '',
  `week_of` varchar(50) NOT NULL DEFAULT '',
  `day_of_week` varchar(2) NOT NULL DEFAULT '',
  `start` varchar(50) DEFAULT NULL,
  `end` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`staff_name`,`staff_dob`,`week_of`,`day_of_week`)
)

CREATE TABLE `Waiver` (
  `date_made` varchar(50) NOT NULL DEFAULT '',
  `climber_name` varchar(50) NOT NULL DEFAULT '',
  `climber_dob` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`date_made`,`climber_name`,`climber_dob`)
)
