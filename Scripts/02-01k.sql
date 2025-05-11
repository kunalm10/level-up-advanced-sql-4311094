

SELECT emp.employeeId,	emp.firstName,	emp.lastName, count (sales.salesId) as numOfCarsSold
FROM employee emp join sales on 
emp.employeeId = sales.employeeId
group by sales.employeeId, emp.firstName, emp.lastName 
order by numOfCarsSold desc;
