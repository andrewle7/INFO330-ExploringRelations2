-- Provide a query that includes the purchased track name AND artist name with each invoice line item.
SELECT tracks.Name, artists.Name FROM invoice_items, artists, tracks, albums WHERE
invoice_items.TrackId = tracks.TrackId AND 
tracks.AlbumId = albums.AlbumId 
AND albums.ArtistId = artists.ArtistId; 
