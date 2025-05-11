-- SELECT * FROM sales LIMIT 10;

SELECT e.firstName, e.lastName, e.title, s.salesId 
FROM employee e LEFT JOIN sales s 
on e.employeeId = s.employeeId
where s.salesId is NULL AND e.title = 'Sales Person'