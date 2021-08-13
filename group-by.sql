--Question 1 
SELECT COUNT(t.track_id), g.name
FROM track t
JOIN genre g    
ON t.genre_id = g.genre_id 
GROUP BY g.name;

--Question 2 
SELECT COUNT(t.track_id) "Track Count", g.name "Genre Name"
FROM track t
JOIN genre g    
ON t.genre_id = g.genre_id 
WHERE g.name = 'Pop' OR g.name = 'Rock'
GROUP BY g.name;

--Question 3 
SELECT a.name, COUNT(al.album_id)
FROM artist a 
JOIN album al 
ON a.artist_id = al.artist_id 
GROUP BY a.name;

