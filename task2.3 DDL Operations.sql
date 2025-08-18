UPDATE Employees 
SET Email = LOWER(FirstName || '.' || LastName || '@company.com')
WHERE Email IS NULL;

ALTER TABLE Employees 
ADD CONSTRAINT uk_email UNIQUE (Email);