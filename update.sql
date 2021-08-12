--Question 1 
UPDATE customer
SET fax = NULL
WHERE fax IS NOT NULL;

--Question 2

UPDATE customer
SET company = 'Self'
WHERE company IS NULL;

--Question 3 

UPDATE customer
SET last_name = 'Thompson'
WHERE first_name = 'Julia' AND last_name = 'Barnett';

--Question 4 

UPDATE customer
SET support_rep_id = 4
WHERE email = 'luisrojas@yahoo.cl';

--Question 5

UPDATE track
SET composer = 'The darkness around us'
WHERE genre_id IN (
SELECT genre_id FROM genre WHERE name = 'Metal' AND composer IS NULL 
);