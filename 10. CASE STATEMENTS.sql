-- CASE STATEMENTS

SELECT first_name,
last_name, age,
CASE
	WHEN age <=30  THEN 'YOUNG'
    WHEN age BETWEEN 31 AND 50 THEN 'OLD'
    WHEN age>=50 THEN "ON DEATH's DOOR"
END AS Age_bracket
FROM employee_demographics;


-- PAY INCREASE AND BONUS
-- < 50000 = 5%
-- > 50000 = 7%
-- FINANCE =  10% BONUS
select first_name, last_name, salary,
CASE 
	WHEN salary < 50000 THEN salary + (salary * 0.05)
	WHEN salary > 50000 THEN salary * 1.07
    END AS new_salary,
    CASE
		WHEN dept_id = 6 THEN salary * .10
        END AS Bonus
    FROM employee_salary;
    
    
    select *
    FROM employee_salary;
    SELECT *
    FROM parks_departments;
    

