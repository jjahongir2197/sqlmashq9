CREATE TABLE inventory (
    product_id INT,
    product_name VARCHAR(50),
    stock INT
);

INSERT INTO inventory VALUES
(1, 'Laptop', 5),
(2, 'Phone', 0),
(3, 'Tablet', 10);

SELECT product_name,
       CASE
           WHEN stock = 0 THEN 'Out of Stock'
           WHEN stock < 5 THEN 'Low Stock'
           ELSE 'Available'
       END AS status
FROM inventory;
