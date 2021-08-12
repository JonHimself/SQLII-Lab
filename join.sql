-- Question 1
SELECT *
FROM invoice
    JOIN invoice_line il
ON il.invoice_id = invoice.invoice_id
WHERE il.unit_price > .99;

--Question 2
SELECT i.invoice_date "date", c.first_name "FirstName", c.last_name "lastName", i.total "total"
FROM invoice i
JOIN customer c
ON i.customer_id = c.customer_id;

--Question 3
SELECT c.first_name "customer First", c.last_name "Customer Last", e.first_name "Support Rep FirstName", e.last_name "Support Rep LastName"
FROM customer c
JOIN employee e 
ON c.support_rep_id = e.employee_id;

--Question 4

SELECT al.title, ar.name
FROM album al
JOIN artist ar
ON al.artist_id = ar.artist_id;

--Question 5 

SELECT p.name "Playlist Name", pl.track_id "Track ID"
FROM playlist p
JOIN playlist_track pl
ON p.playlist_id = pl.playlist_id
WHERE p.name = 'Music';

--Question 6 

SELECT t.name "Track Name", p.playlist_id "from PlayList ID"
FROM track t
JOIN playlist_track pl
ON t.track_id = pl.track_id
JOIN playlist p
ON pl.playlist_id = p.playlist_id;

--Question 7 

SELECT t.name "Track Name", p.name "In Playlist"
FROM track t
JOIN playlist_track pl
ON t.track_id = pl.track_id
JOIN playlist p
ON pl.playlist_id = p.playlist_id;

--Question 8

SELECT t.name "Track Name", a.title "Album", g.name "Genre"
FROM track t
JOIN genre g
ON t.genre_id = g.genre_id
JOIN album a
ON t.album_id = a.album_id
WHERE g.name = 'Alternative & Punk';