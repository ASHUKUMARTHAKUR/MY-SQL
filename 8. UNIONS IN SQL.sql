-- UNIONS

SELECT first_name, last_name
FROM employee_demographics
UNION ALL
SELECT first_name, last_name 
FROM employee_salary;



SELECT first_name, last_name, 'old man' AS label
FROM employee_demographics
WHERE age > 40 AND gender = 'male'
UNION
SELECT first_name, last_name, 'old lady' AS label
FROM employee_demographics
WHERE age > 40 AND gender = 'female'
UNION
SELECT first_name, last_name, 'higly paid employee' AS label
FROM employee_salary
WHERE salary > 70000
ORDER BY first_name, last_name;

