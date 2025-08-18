CREATE OR REPLACE VIEW IT_Department_View AS
SELECT EmployeeID, FirstName, LastName, Salary
FROM Employees
WHERE Department = 'IT';