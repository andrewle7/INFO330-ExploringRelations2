-- Find tracks (id, name and composer) that are part of a line in an invoice.
SELECT tracks.TrackId, tracks.Name, tracks.Composer, invoice_items.InvoiceLineId FROM tracks, invoice_items WHERE
invoice_items.TrackId = tracks.TrackId;