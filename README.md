#SQL Challenge


##Overview

This project consists of a PostgreSQL database schema and analysis queries. The schema includes tables for managing departments, titles, employees, department employees, department managers, and employee salaries. The analysis queries perform various operations on the data, providing insights into the workforce.

##Database Schema

###Tables

1. DEPARTMENTS

*dept_no (Primary Key)
*dept_name

2. TITLES

*title_id (Primary Key)
*title

3. EMPLOYEES

*emp_no (Primary Key)

*emp_title (Foreign Key)

*birth_date

*first_name

*last_name

*sex

*hire_date

4.DEPT_EMP

*emp_no (Foreign Key)

*dept_no (Foreign Key)

*(Composite Primary Key)

5.DEPT_MANAGER

*dept_no (Foreign Key)

*emp_no (Foreign Key)

*(Composite Primary Key)

6.SALARIES

*emp_no (Primary Key) (Foreign Key)

*salary

###Foreign Key Relationships

*EMPLOYEES.emp_title references TITLES.title_id

*DEPT_EMP.emp_no references EMPLOYEES.emp_no

*DEPT_EMP.dept_no references DEPARTMENTS.dept_no

*DEPT_MANAGER.dept_no references DEPARTMENTS.dept_no

*DEPT_MANAGER.emp_no references EMPLOYEES.emp_no

*SALARIES.emp_no references EMPLOYEES.emp_no

###Constraints
*pk_DEPARTMENTS, pk_TITLES, pk_EMPLOYEES, pk_DEPT_EMP, pk_DEPT_MANAGER, pk_SALARIES

##Database Diagram

[Schema]: https://github.com/MaisieDeGraaf/sql-challenge/blob/main/DBD%20Diagram.png

##Analysis Queries

The sqlchallenge_Analysis file contains SQL queries that provide insights into the workforce data. Key queries include:

1. Employee Salaries:

Retrieve employee details along with their salaries.

2. Hiring Analysis:

List employees hired in 1986, sorted by hire date.

3. Department Managers:

Retrieve department managers' details along with department information.

4. Employee Departments:

List employees along with their department details.

5. Specific Employee Query:

Query for employees with a specific first name and last name pattern.

6. Department Employee Query:

List employees in the Sales department.

7. Multi-Department Query:

List employees in Sales or Development departments.

8. Last Name Count:

Count occurrences of each last name in the workforce.

##Resources

The Resources folder contains six Excel files that can be imported into the respective tables once the schema SQL has been executed.

##Usage

1. Execute the sqlchallenge_Schema SQL file to create the database schema.

2. Import data from CSV files in the Resources folder.

3. Run analysis queries from the sqlchallenge_Analysis file for insights.
