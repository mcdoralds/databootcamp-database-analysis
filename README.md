# databootcamp-database-analysis
## Overview
The client is a large PC and electronic peripheral company with a large employee base. The client requested that a Human Resources analysis of the employee database be done to determine who will be retiring in the next years to come, and which titles will need to be re-filled. 

### Objective
The purpose of the analysis on the employee database is to gain insight on retirement trends and prepare for hiring needs in advance. Analysis of this data will also potentially provide support in pitching a mentorship initiative to executives. 

### Deliverables
Deliverable 1: The Number of Retiring Employees by Title
Deliverable 2: The Employees Eligible for the Mentorship Program
Deliverable 3: A written report on the employee database analysis (README.md)

### Methods
I started with creating an ERD of the data structure which I referenced to write out the SQL queries.

![EmployeeDB ERD](https://user-images.githubusercontent.com/31219195/172081380-203198bb-bafc-4851-b103-a29faf5b3ecc.png)

For the purposes of this project, Retirement Eligibility is defined as current employees who were born between January 1, 1952 and December 31, 1955.

Due to some employees may have multiple titles in the database — for example, due to promotions — we used various methods to clean up and filter database tables to exclude duplicates and only show current employees eligible for retirement. 

## Results
The analysis shows that there are a large number of employees who are eligible or are approaching eligibility for retirement.

![image](https://user-images.githubusercontent.com/31219195/172082136-4bfcf758-0a2e-4660-adda-9ba720057371.png)

Over 50,000 of the eligible 72,458 were Senior Engineers or Senior Staff.

With the mentorship program, 56,859 of the 72,000+ retirees will be eligible to remain a part of the company part-time and help buffer the transition to new staff.

