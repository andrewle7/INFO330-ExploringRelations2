-- What was the most purchased track of 2013?
SELECT tracks.name, sum(invoice_items.Quantity) AS tracks_sold FROM tracks, invoice_items, invoices
WHERE invoice_items.TrackId = tracks.TrackId 
AND invoice_items.InvoiceId = invoices.InvoiceId 
AND invoices.InvoiceDate BETWEEN '2013-01-01' AND '2013-12-31'
GROUP BY tracks.TrackId
ORDER BY tracks_sold DESC
LIMIT 1;