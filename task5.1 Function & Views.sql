CREATE OR REPLACE FUNCTION CalculateAnnualBonus(
    employee_id INT,
    Salary DECIMAL
) 
RETURNS DECIMAL AS $$
BEGIN
    RETURN Salary * 0.10; 
END;
$$ LANGUAGE plpgsql;