-- LIMIT & ALIASING 

SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 2, 1;

-- ALIASING  

SELECT gender, AVG(age) AS avg_age
FROM employee_demographics
GROUP BY gender
HAVING avg_age > 40;
