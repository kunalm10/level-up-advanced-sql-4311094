
with CTE AS
(
SELECT strftime('%Y',soldDate) as soldyear, salesAmount FROM sales
)
select soldyear as Year, sum(salesAmount) as AnnualSales
from CTE 
group by soldyear
