SELECT e.firstName,e.lastName, e.title, m.firstName as Manager_FN, m.lastName as Manager_LM
FROM employee e join employee m 
on e.managerId = m.employeeId;