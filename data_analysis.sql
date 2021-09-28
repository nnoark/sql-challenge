--List employee number, last name, first name, sex, and salary
SELECT "Employees".emp_no, "Employees".last_name, "Employees".first_name, "Employees".sex, "Salaries".salary
FROM "Employees" 
INNER JOIN "Salaries"
ON "Employees".emp_no = "Salaries".emp_no;

--First name, last name, hire date for employees hired in 1986
SELECT first_name, last_name, hire_date
FROM "Employees"
WHERE hire_date LIKE '__/__/1986';


--Department manager, department number, department name, employee number, last name, first name
SELECT "Dept_Manager".dept_no, "Departments".dept_name, "Employees".emp_no, "Employees".last_name, "Employees".first_name
FROM "Employees"
INNER JOIN "Dept_Manager"
ON "Employees".emp_no = "Dept_Manager".emp_no
INNER JOIN "Departments"
ON "Dept_Manager".dept_no = "Departments".dep_no;

--Department name,employee number, last name, first name
SELECT "Departments".dept_name, "Employees".emp_no, "Employees".last_name, "Employees".first_name
FROM "Employees"
INNER JOIN "Dept_Emp"
ON "Employees".emp_no = "Dept_Emp".emp_no
INNER JOIN "Departments"
ON "Dept_Emp".dept_no = "Departments".dep_no;

--First name, last name, and sex for employees named Hercules with a last name beginning with a B
SELECT first_name, last_name, sex
FROM "Employees"
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

--employee names, employee numbers, and department from all employees in the sales department
SELECT *
FROM "Departments";
--SALES = 'd007'
SELECT "Employees".emp_no,"Employees".last_name, "Employees".first_name, "Departments".dept_name
FROM "Employees"
INNER JOIN "Dept_Emp"
ON "Employees".emp_no = "Dept_Emp".emp_no
INNER JOIN "Departments"
ON "Dept_Emp".dept_no = "Departments".dep_no
WHERE "Departments".dep_no = 'd007';

--employee names, employee numbers, and department from all employees in the sales department and development department
SELECT "Employees".emp_no,"Employees".last_name, "Employees".first_name, "Departments".dept_name
FROM "Employees"
INNER JOIN "Dept_Emp"
ON "Employees".emp_no = "Dept_Emp".emp_no
INNER JOIN "Departments"
ON "Dept_Emp".dept_no = "Departments".dep_no
WHERE "Departments".dep_no = 'd007' or "Departments".dep_no = 'd005';

--List the frequency count of last names
Select last_name, COUNT(last_name) AS "Count"
FROM "Employees"
GROUP BY last_name
ORDER BY "Count" DESC;

 

