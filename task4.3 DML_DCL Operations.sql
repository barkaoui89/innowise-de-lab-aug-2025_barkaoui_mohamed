DELETE FROM Employees
WHERE NOT EXISTS (
    SELECT 1 FROM EmployeeProjects ep
    WHERE ep.EmployeeID = Employees.EmployeeID
);