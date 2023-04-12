-- Which sales agent made the most in sales in 2010?
SELECT employees.EmployeeId, employees.FirstName, employees.LastName, SUM(invoices.Total) AS total_sales 
FROM customers, invoices, employees 
WHERE customers.SupportRepId = employees.EmployeeId AND
invoices.InvoiceDate BETWEEN '2010-01-01' AND '2010-12-31'
GROUP BY employees.EmployeeId 
ORDER BY total_sales DESC
LIMIT 1;