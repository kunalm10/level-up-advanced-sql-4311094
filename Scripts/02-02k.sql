

SELECT emp.employeeId,	emp.firstName,	emp.lastName, 
MIN(sales.salesAmount) AS MinSalesAmount, 
MAX(sales.salesAmount) as MaxSalesAmount
FROM employee emp join sales on 
emp.employeeId = sales.employeeId
where sales.soldDate >= date('2023','start of year')
group by sales.employeeId, emp.firstName, emp.lastName 

