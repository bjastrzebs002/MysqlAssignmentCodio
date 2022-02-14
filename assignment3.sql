mysql;
use COMPANY1;
-- List all Employees whose salary is between 1,000 AND 2,000. Show the Employee Name, Department and Salary
SELECT ENAME, DEPTNO, SAL 
from EMP
where SAL between 1000 and 2000;

-- Count the number of people in department 30 who receive a salary and the number of people who receive a commission
SELECT count(EMPNO) get_sal from EMP where DEPTNO = 30 and SAL is not null and SAL != 0;
SELECT count(EMPNO) get_sal from EMP where DEPTNO = 30 and COMM is not null and COMM != 0;

-- Find the name and salary of employees in Dallas
select e.ENAME, e.SAL 
from EMP as e
INNER JOIN DEPT as d
ON e.DEPTNO = d.DEPTNO
WHERE LOC = "DALLAS";

-- List all departments that do not have any employees 
SELECT DNAME
FROM DEPT
WHERE DEPTNO NOT IN (
  SELECT DISTINCT(DEPTNO) as deptno from EMP
);

-- List the department number and average salary of each department
SELECT DEPTNO, AVG(SAL) avg_salary
from EMP
GROUP BY DEPTNO;
