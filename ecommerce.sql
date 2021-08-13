--TABLES
CREATE TABLE users (
user_id SERIAL PRIMARY KEY,
name VARCHAR(50),
email VARCHAR(100)
)

CREATE TABLE products (
product_id SERIAL PRIMARY KEY,
name VARCHAR(50),
price NUMERIC (8, 2)
)

CREATE TABLE cart (
cart_id SERIAL PRIMARY KEY,
user_id INT NOT NULL REFERENCES users(user_id),
product_id INT NOT NULL REFERENCES products(product_id)
)

-- TABLE DATA
INSERT INTO users (name, email)
VALUES ('Jimmy', '123@123.com'), ('Sam', '345@123.com'), ('James', '567@123.com');

INSERT INTO products (name, price)
VALUES ('banana', 1.99 ), ('pear', 2.99), ('apple', 1.00), ('orange', 1.25), ('plumb', 2.00);

INSERT INTO cart (user_id, product_id, quantity)
VALUES (1, 3, 5)

--RUN QUERIES
--Get all products in your first user’s cart
SELECT p.name "Products", u.name "User", cart.quantity
FROM cart 
JOIN users u
ON cart.user_id = u.user_id
JOIN products p
ON cart.product_id = p.product_id
WHERE u.user_id = 1;


--Get products in all carts with all the users’ information
SELECT p.name "Products", u.name "User", u.email "Email", cart.quantity
FROM cart 
JOIN users u
ON cart.user_id = u.user_id
JOIN products p
ON cart.product_id = p.product_id;

--Get the total cost of an order (sum the price of all products on an cart).
SELECT u.name "User", SUM(p.price * cart.quantity)
FROM cart 
JOIN users u
ON cart.user_id = u.user_id
JOIN products p
ON cart.product_id = p.product_id
WHERE u.user_id = 1
GROUP BY u.user_id;

--Update the quantity of a product in a user’s cart where the user’s id is 2
UPDATE cart
SET quantity = 100
WHERE user_id IN(
SELECT user_id FROM users WHERE user_id = 2
);







