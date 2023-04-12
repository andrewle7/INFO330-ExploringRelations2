-- Find tracks (id, name, and composer) that have never been purchased (that is, they aren't part of a line item in an invoice).
SELECT tracks.trackid, tracks.name, tracks.composer
FROM tracks
LEFT JOIN invoice_items ON tracks.trackid = invoice_items.trackid
WHERE invoice_items.trackid IS NULL;
