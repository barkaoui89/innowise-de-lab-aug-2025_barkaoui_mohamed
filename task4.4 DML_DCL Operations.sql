BEGIN;

INSERT INTO Projects (ProjectName, Budget, StartDate, EndDate)
VALUES ('Cloud Migration', 120000.00, '2023-07-01', '2023-12-31')
RETURNING ProjectID;