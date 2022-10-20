----------------Count Function-----------


----Create  suppliers table----
CREATE TABLE suppliers
( supplier_id int NOT NULL,
  supplier_name char(50) NOT NULL,
  city char(50),
  state char(50),
  CONSTRAINT suppliers_pk PRIMARY KEY (supplier_id)
);


---Populate Table------
INSERT INTO suppliers VALUES
(100, 'Microsoft', 'Redmond', 'Washington'),
(200, 'Google', 'Mountain View', 'California'),
(300, 'Oracle', 'Redwood City', 'California'),
(400, 'Kimberly-Clark', 'Irving', 'Texas'),
(500, 'Tyson Foods', 'Springdale', 'Arkansas'),
(600, 'SC Johnson', 'Racine', 'Wisconsin'),
(700, 'Dole Food Company', 'Westlake Village', 'California'),
(800, 'Flowers Foods', 'Thomasville', 'Georgia'),
(900, 'Electronic Arts', 'Redwood City', 'California')


-----Show all the different cities----

SELECT COUNT(DISTINCT city) AS Cities
FROM suppliers;


-----Create orders table----

CREATE TABLE orders
( order_id int NOT NULL,
  customer_id int,
  order_date date,
  CONSTRAINT orders_pk PRIMARY KEY (order_id)
);


----Populate orders table-----
INSERT INTO orders VALUES
(1,7000,'2016/04/18'),
(2,5000,'2016/04/18'),
(3,8000,'2016/04/19'),
(4,4000,'2016/04/20'),
(5,null,'2016/05/01')

----Select the number of orders for each date----

SELECT order_date, COUNT(*) AS total
FROM orders
GROUP BY order_date;