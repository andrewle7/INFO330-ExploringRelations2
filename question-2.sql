-- Show the sales agent's full name and invoices associated with each sales agent.
SELECT employees.FirstName, employees.LastName, invoices.* FROM customers, invoices, employees 
WHERE customers.SupportRepId = employees.EmployeeId;