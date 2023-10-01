SELECT *
FROM SQLExercises.dbo.OrlandoEmployees

UPDATE SQLExercises.dbo.OrlandoEmployees
set HireDate = '2019-08-10'
WHERE HireDate IS NULL

SELECT COUNT(EmployeeID) AS TOTALEMPLOYEES
FROM SQLExercises.dbo.OrlandoEmployees

SELECT MIN(Salary) AS LEASTSAL
FROM SQLExercises.dbo.OrlandoEmployees

SELECT MAX(Salary) AS HIGHESTSAL
FROM SQLExercises.dbo.OrlandoEmployees

SELECT AVG(Salary) AS AVGSALARY
FROM SQLExercises.dbo.OrlandoEmployees

SELECT Department, COUNT(Department) EmployeeCount
FROM SQLExercises.dbo.OrlandoEmployees
GROUP BY (Department)

SELECT top 1 Department, COUNT(*) AS EmployeeCount
FROM SQLExercises.dbo.OrlandoEmployees
GROUP BY Department
ORDER BY EmployeeCount DESC




SELECT top 1 Location, COUNT(EmployeeID) EmployeeCount
FROM SQLExercises.dbo.OrlandoEmployees
GROUP BY Location
ORDER BY EmployeeCount DESC

SELECT Department, AVG(Salary) AVGSALARY
FROM SQLExercises.dbo.OrlandoEmployees
GROUP BY Department
ORDER BY AVGSALARY DESC

delete 
FROM SQLExercises.dbo.OrlandoEmployees
WHERE Age IS NULL

SELECT FirstName, LastName, Age, Salary
FROM (
    SELECT *,
           DATEDIFF(YEAR, HireDate, 2023-08-28) AS Age,
           AVG(Salary) OVER () AS AvgSalary
    FROM OrlandoEmployees
) AS EmployeeAgeAvgSalary
WHERE Age > 40 AND Salary > AvgSalary;

SELECT *,
DATEDIFF(YEAR, 2023-08-28, HireDate) AS Age
FROM OrlandoEmployees

SELECT FirstName, LastName, HireDate, DATEDIFF(YEAR, 2023-08-28, HireDate) AS SERVICEYEAR
FROM OrlandoEmployees
GROUP BY FirstName, LastName, HireDate
ORDER BY SERVICEYEAR DESC

