# Design Report 

This is a description of the Boundless Adventures Zipline and Aerial Park enterprise. There are three park locations (Purchase NY, Berlin MA, and a new opening at Kenosha WI). At each park there are several courses of different difficulties (easy/yellow, intermediate/green, hard/blue, and expert/black). Each course also has a unique name as well as a difficulty. On the courses there are many elements/obstacles, which can either be a normal element, a zipline, an action element, or a tru-blue. Each element has a number indicating how far into the course it is located. There are also platforms in between each element on every course which also have their own number by which to identify them. Every park has at least 1 manager. Each park has a maximum capacity. 

The parks employ many staff. Each staff member has a role indicating their job (Host, Counselor, Monitor, Supervisor, and Manager). Monitors specifically have 3 ranks (M1, M2, M3). As an M1, the employees training status will be tracked with the following information:
- briefing status (None,Trained but not cleared, Cleared) 
- number of supervised high platform lowers (-1 for untrained, 0 once trained, 1, or 2) 
- number of supervised mid-element lowers (-1 for untrained, 0 once trained, 1, or 2)

Other information known about all employees are: their name, their date of birth, date hired, which location they work at, preferred payment method (check or DD), part-time or full-time, phone number, email, emergency contact, emergency number, emergency email. Every employee has an hourly pay rate determined by their role/rank (managers are salaried,). An employee’s working hours are tracked by a weekly timecard. Each time card records the date of the most recent Monday, the employee id, the start and end time of a shift, and the weekday of the given shift.

 Every morning, each of the courses are inspected by an employee. A daily inspection log is kept which indicates the inspection date, the inspecting employee, the course being inspected, whether the course is to be opened or closed. If it is closed an inspection report will be filed indicating the reason for closure including the element that caused the report, as well as a status indicating whether the problem has been resolved and the course is ready to be reopened. 

Each park has a storage of harnesses. There are large and small harnesses. Both large and small harnesses are identified by a number (there are two harness #1. Both a large and small. Identification must include both size and number). Every harness has an active or inactive status depending on whether it is in circulation. Before being put out for use, a harness must be checked at least once on a given day by an employee. If inspecting one or more harnesses an employee will log the date, and the ids of all harnesses they checked. If a harness fails an inspection, a harness service report will be filed indicating the reason for report, as well as a status indicating whether the problem has been resolved and the harness is ready to be put back into circulation. While a report is unfulfilled, the harness will not be used in active circulation. Harness service reports may also be filed after use by a customer for a number of other reasons. 

Customers can buy tickets for either 2 or 3 hours. Tickets can either be for a reservation or walk in. Reservations can be made as: 
- general admission 
- camp or school group 
- party group
- corporate/business group 

for general admission tickets (reservation or walk in) there is a per person fee. For each type of group reservation there is a flat fee up to a certain number of climbers with a per person fee for every additional climber. Tickets can only be made to begin on 15 minute incremented time slots. 

Every customer MUST fill out a waiver before being allowed to climb. This waiver records:
- name 
- date of birth (age) 
- email 
- phone number 
- emergency contact name 
- emergency number 
- emergency email 

If a climber wants or is needed to be removed from a course before completion a sufficiently trained monitor will perform a rescue. Rescues will either be a high platform lower or a mid-element lower. A lower performed by an M1 monitor with either a 0 or a 1 in their training status for that type of lower must be supervised by either a supervisor or manager. That lower will be recorded with the following information: 
monitor performing lower 
supervising monitor 
type of lower 
element or platform that the lower is performed at 
The date and time of the lower 
evaluation of lower (training status will either increase or remain the same based on evaluation) 


# Eight step algorithm result. 

Park(<u>location</u>, capacity)\
Course(<u>name</u>, difficulty, p_loc)\
Staff(<u>name,DOB</u>,pay_meth,date_hired,rank,P#,email,emergency_cont_name,emergency_cont_ email,emergency_cont_p#,employ_type,park_loc, pay_rate)\
climber(<u>name,DOB</u>,P#,email,emergency_cont_name,emergency_cont_email,emergency_cont_ p#,p_loc)\
pay_rate(<u>rank</u>,rate)\
tick_price(<u>type</u>,price)\
harness(<u>location,size,number</u>,status)\
obstacle(<u>el_number,type,c_name</u>)\
platform(<u>el_number,staff_access,c_name</u>)\
lower(<u>m1_name,m1_dob,el#,cname,sup_name,sup_dob,date_time</u>,evaluation,lower_type)\
CIL(<u>cname,m_name,m_dob,date</u>,result)\
HIL(<u>s_name,s_dob,location,size,h_num,date</u>,result)\
serv_report(<u>h_num,location,size,date</u>,reason,status)\
CFR(<u>cname,m_name,m_dob,date,el_num</u>,descrip,status)\
timecard(<u>s_name,s_dob,week_of,day_of_week</u>,start,end)\
waiver(<u>date_made,c_name,c_dob</u>)\
ticket(<u>date,c_name,c_dob</u>,type,time_slot)\
Super(<u>super_name,super_dob</u>)\
manager(<u>man_name,man_dob,man_park_loc</u>)\
m1(<u>M1_name,M1_dob</u>,brief_train_status,high_plats,mid_es)\




# Functional Dependencies Table

| FD    | Derived From |
| -------- | ------- |
| Location → capacity  | There are three park locations (Purchase NY, Berlin MA, and Kenosha WI). Each park has a maximum capacity.    |
| Course_name → difficulty, park_location  | At each park there are several courses of different difficulties (easy/yellow, intermediate/green, hard/blue, and expert/black). Each course also has a unique name as well as a difficulty.     |
| Staff_name, Staff_DOB → Pay_Method,date_hired,rank,Phone#,email,emergency_contact_name,emergency_contact_email,emergency_contact_phone#,employment_type,park_location, pay_rate    | Each staff member has a role indicating their job. Other information known about all employees are: their name, their date of birth, the date hired, which location they work at, preferred payment method (check or DD), part-time or full-time, their personal phone number, personal email, emergency contact, emergency number, and emergency email. For the above FD, Staff_name,phone# OR staff_name,email could serve as alternate candidate keys that successfully identify a staff member.    |
| Climber_name,climber_DOB→Phon#,email,emergency_contact_name,emergency_contact_email,emergency_contact_phone#,park_locch    | Every customer MUST fill out a waiver before being allowed to climb. This waiver records: - name - date of birth (age) - email - phone number - emergency contact name - emergency number - emergency email
Unlike staff, neither phone# or email can serve as alternate parts of a candidate key as minors will have their parents’ number and email in their information.    |
| park_Location,harness_size,harness_number → harness_status    | Each park has a storage of harnesses. There are large and small harnesses. Both large and small harnesses are identified by a number (there are two harness #1. Both large and small. Identification must include both size and number). Every harness has an active or inactive status depending on whether it is in circulation.    |
| M1_name,M1_DoB,element#,Course_Name,super_name,super_dob,date_time →evaluation, lower_type    | A lower performed by an M1 monitor with either a 0 or a 1 in their training status for that type of lower must be supervised by either a supervisor or manager. That lower will be recorded with the following information: - monitor performing lower - supervising monitor - type of lower - element or platform that the lower is performed at - The date and time of the lower - evaluation of lower (training status will either increase or remain the same based on evaluation)    |
| course_name,m_name,m_dob,date→result    | Every morning, each of the courses are inspected by an employee. A daily inspection log is kept which indicates the inspection date, the inspecting employee, the course being inspected, whether the course is to be opened or closed.    |
| Alternatively: course_name,date→result,m_name,m_dob As each course is only inspected once every day, the key could be reduced to JUST the course key and the date. However, for the purposes of the enterprise this would be insufficient as the monitor conducting the inspection is desired information.    |     |
| Course_Name,Monitor_Name,Monitor_DoB,Date,element_num → description, status    | If it is closed an inspection report will be filed indicating the reason for closure including the element that caused the report, as well as a status indicating whether the problem has been resolved and the course is ready to be reopened.    |
| Staff_name,staff_dob,week_of,day_of_week→start, end    | An employee’s working hours are tracked by a weekly timecard. Each time card records the date of the most recent Monday, the employee id, the start and end time of a shift, and the weekday of the given shift.    |
| Date,climber_name,climber_dob →ticket_type,time_slot    | Customers can buy tickets for either 2 or 3 hours. Tickets can only be made to begin on 15 minute incremented time slots.Tickets can either be for a reservation or walk in.    |
| M1_name,M1_dob →brief_train_status,high_plats,mid_es    | As an M1, the employees training status will be tracked with the following information: - briefing status (None,Trained but not cleared, Cleared) - number of supervised high platform lowers (-1 for untrained, 0 once trained, 1, or 2) - number of supervised mid-element lowers (-1 for untrained, 0 once trained, 1, or 2)    |
| job_Rank → pay_rate    | Every employee has an hourly pay rate determined by their role/rank (managers are salaried,).     |
| ticket_type→ ticket_price    | Every employee has an hourly pay rate determined by their role/rank (managers are salaried,). |
| Manager_name,manager_dob→man_park_loc    | Every park has at least 1 manager.    |
| Staff_name,staff_dob,park_location,size,harness_num,date→ result    | Before being put out for use, a harness must be checked at least once on a given day by an employee. If inspecting one or more harnesses an employee will log the date, and the ids of all harnesses they checked |
| Harness_num,location,size,date→reason,status    | If a harness fails an inspection, a harness service report will be filed indicating the reason for report, as well as a status indicating whether the problem has been resolved and the harness is ready to be put back into circulation. While a report is unfulfilled, the harness will not be used in active circulation. Harness service reports may also be filed after use by a customer for a number of other reasons.    |


# Finalized 3NF Tables

Park(<u>location</u>, capacity) - in 3NF already, a is superkey for relevant dependency\
Course(<u>name</u>, difficulty, p_loc) - in 3NF already, a is superkey for relevant dependency\
Staff(<u>name,DOB</u>,pay_meth,date_hired,rank,P#,email,emergency_cont_name,emergency_cont_email,emergency_cont_p#,employ_type,park_loc, pay_rate) Not in 3NF.\

Pay rate is redundant to have in the staff table as the rank of the staff member implies it. As we
already have a table for the rank and pay rate relation, we can just remove the attribute from the
staff table. The resulting table is:
    Staff(<u>name,DOB</u>,pay_meth,date_hired,rank,P#,email,emergency_cont_name,emergency_cont_email,emergency_cont_p#,employ_type,park_loc)

climber(<u>name,DOB</u>,P#,email,emergency_cont_name,emergency_cont_email,emergency_cont_p#,p_loc) - in 3NF already, a is superkey for relevant dependency\
pay_rate(<u>rank</u>,rate) - in 3NF already, a is superkey for relevant dependency\
tick_price(<u>type</u>,price) - in 3NF already, a is superkey for relevant dependency\
harness(<u>location,size,number</u>,status) - in 3NF already, a is superkey for relevant dependency\
obstacle(<u>el_number,c_name</u>,type) - in 3NF already, a is superkey for relevant dependency\
platform(<u>el_number,c_name</u>,staff_access)- in 3NF already, a is superkey for relevant dependency\
lower(<u>m1_name,m1_dob,el#,course_name,sup_name,sup_dob,date_time</u>,evaluation,lower_type)\
CIL(<u>cname,m_name,m_dob,date</u>,result)-in 3NF already, a is superkey for relevant dependency\
HIL(<u>s_name,s_dob,location,size,h_num,date</u>,result)- in 3NF already, a is superkey for relevant dependency\
serv_report(<u>h_num,location,size,date</u>,reason,status)- in 3NF already, a is superkey for relevant dependency\
CFR(<u>cname,m_name,m_dob,date,el_num</u>,descrip,status)- in 3NF already, a is superkey for relevant dependency\
timecard(<u>s_name,s_dob,week_of,day_of_week</u>,start,end)- in 3NF already, a is superkey for relevant dependency\
waiver(<u>date_made,c_name,c_dob</u>)- in 3NF already, trivial\
ticket(<u>date,c_name,c_dob</u>,type,time_slot)- in 3NF already, a is superkey for relevant dependency\
Super(<u>super_name,super_dob</u>) - in 3NF already, trivial\
manager(<u>man_name,man_dob</u>,man_park_loc) - in 3NF, A is a superkey for relevant dependency\
m1(<u>M1_name,M1_dob</u>,brief_train_status,high_plats,mid_es) - in 3NF, A is a superkey for relevant dependency
