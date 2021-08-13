--Question 1
ALTER TABLE animals
ADD location VARCHAR(30);

--Question 2
INSERT INTO animals (name, type, age, location)
VALUES ('Jimmy', 'mouse', 4, 'the attic'),('Jerry', 'mouse', 4, 'the attic'),('James', 'mouse', 4, 'the attic')

--Question 3
ALTER TABLE animals
RENAME COLUMN type TO species;

--Question 4 
ALTER TABLE animals 
ALTER COLUMN species type VARCHAR(40);

