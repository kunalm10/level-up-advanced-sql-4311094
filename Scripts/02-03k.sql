

SELECT emp.employeeId,	emp.firstName,	emp.lastName, count (sales.salesId) as numOfCarsSold
FROM employee emp join sales on 
emp.employeeId = sales.employeeId
where sales.soldDate >= date('2023','start of year')
group by sales.employeeId, emp.firstName, emp.lastName 
HAVING numOfCarsSold > 5
