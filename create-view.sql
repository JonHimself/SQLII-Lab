-- Question 1
CREATE VIEW rock AS 
SELECT t.name "Track Name"
FROM track t
WHERE genre_id IN (
SELECT genre_id FROM genre WHERE name = 'Rock'
);

--Question 2 

CREATE VIEW classical_count AS 
SELECT COUNT(track_id)
FROM track
WHERE track_id IN (
    SELECT track_id FROM playlist_track WHERE playlist_id IN (
    SELECT playlist_id FROM playlist WHERE name = 'Classical'  
    )
);