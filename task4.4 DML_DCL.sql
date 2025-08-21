-- ===================================================
-- Task 4: Insert new project and assign employees
-- All operations in a single transaction block (BEGIN/COMMIT)
-- Includes DML and DCL operations
-- ===================================================

-- Start the transaction
BEGIN;

    -- DML: Insert a new project
    INSERT INTO Projects (ProjectName, Budget, StartDate, EndDate)
    VALUES ('Cloud Migration Initiative', 250000.00, CURRENT_DATE, CURRENT_DATE + INTERVAL '1 year');

    -- DML: Assign existing employee (Bob Johnson, assumed EmployeeID=2) to the project
    INSERT INTO EmployeeProjects (EmployeeID, ProjectID, HoursWorked)
    VALUES (2, (SELECT ProjectID FROM Projects WHERE ProjectName = 'Cloud Migration Initiative'), 140);

    -- DML: Assign another existing employee (Alice Smith, assumed EmployeeID=1)
    INSERT INTO EmployeeProjects (EmployeeID, ProjectID, HoursWorked)
    VALUES (1, (SELECT ProjectID FROM Projects WHERE ProjectName = 'Cloud Migration Initiative'), 100);

-- Commit all changes atomically
COMMIT;

-- ===============================================
-- DCL: Demonstration of granting permissions
-- (Continuation from Task 3 - required for full DCL usage)
-- ===============================================

-- DCL: Grant SELECT, INSERT, and UPDATE privileges on EmployeeProjects to hr_user
GRANT SELECT, INSERT, UPDATE ON EmployeeProjects TO hr_user;

-- DCL: Grant SELECT on Projects table to hr_user (so they can view the new project)
GRANT SELECT ON Projects TO hr_user;

-- Optional: Revoke privilege (example of DCL)
-- REVOKE UPDATE ON EmployeeProjects FROM hr_user;

-- ===============================================
-- Verification Queries (Optional - for testing)
-- ===============================================

-- Check that the new project was inserted
SELECT * FROM Projects WHERE ProjectName = 'Cloud Migration Initiative';

-- Check employee assignments
SELECT e.FirstName, e.LastName, p.ProjectName, ep.HoursWorked
FROM EmployeeProjects ep
JOIN Employees e ON ep.EmployeeID = e.EmployeeID
JOIN Projects p ON ep.ProjectID = p.ProjectID
WHERE p.ProjectName = 'Cloud Migration Initiative';