--Question 1
SELECT *
FROM invoice_line
WHERE invoice_id IN(
    SELECT invoice_id FROM invoice WHERE unit_price > '.99'
);

--Question 2 
SELECT playlist_track_id
FROM playlist_track
WHERE playlist_id IN (
SELECT playlist_id FROM playlist WHERE name = 'Music'
);

--Question 3 
SELECT t.name "Track Name"
FROM track t
WHERE track_id IN (
SELECT track_id FROM playlist_track WHERE playlist_id = '5'
);

--Question 4 

SELECT t.name "Track Name"
FROM track t
WHERE genre_id IN (
SELECT genre_id FROM genre WHERE name = 'Comedy'
);

--Question 5 

SELECT t.name "Track Name"
FROM track t
WHERE album_id IN (
SELECT album_id FROM album WHERE title = 'Fireball'
);

--Question 6 
SELECT t.name "Queen Song"
FROM track t 
WHERE album_id IN (
SELECT album_id FROM album WHERE artist_id IN (
SELECT artist_id FROM artist WHERE name = 'Queen'
))
