-- WINDOW FUNCTIONS

SELECT dem.first_name, dem.last_name, gender, AVG(salary) AS avg_salary
FROM employee_demographics dem
join employee_salary sal
	on dem.employee_id=sal.employee_id
    Group by dem.first_name, dem.last_name, gender;
    
    
    SELECT dem.first_name, dem.last_name, gender, AVG(salary) OVER(PARTITION BY gender)
FROM employee_demographics dem
join employee_salary sal
	on dem.employee_id=sal.employee_id
    ;
    
    
    
        SELECT dem.first_name,
        dem.last_name,
        gender,
        salary,
        SUM(salary) OVER(PARTITION BY gender ORDER BY dem.employee_id) AS rolling_total
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id=sal.employee_id
    ;
    
    
    
        SELECT dem.employee_id, dem.first_name, dem.last_name, gender, salary,
        ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC) AS ROW_NUM,
        RANK() OVER(PARTITION BY gender ORDER BY salary DESC) AS RANK_NUM,
        DENSE_RANK() OVER(PARTITION BY gender ORDER BY salary DESC) AS DENSE_RANK_NUM
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id=sal.employee_id
    ;