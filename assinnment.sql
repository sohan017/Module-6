//Task 1

SELECT
  Customers.customer_id,
  Customers.name,
  Customers.email,
  Customers.location,
  COUNT(Orders.order_id) AS total_orders
FROM
  Customers
JOIN Orders ON Customers.customer_id = Orders.customer_id
GROUP BY
  Customers.customer_id
ORDER BY
  total_orders DESC;


//Task 2

SELECT
  Products.name AS product_name,
  Order_Items.quantity,
  Order_Items.unit_price * Order_Items.quantity AS total_amount
FROM
  Products
JOIN Order_Items ON Products.product_id = Order_Items.product_id
ORDER BY
  Order_Items.order_id ASC;


//task 3

SELECT
  Categories.name AS category_name,
  SUM(Order_Items.unit_price * Order_Items.quantity) AS total_revenue
FROM
  Categories
JOIN Products ON Categories.category_id = Products.category_id
JOIN Order_Items ON Products.product_id = Order_Items.product_id
GROUP
 
BY
  Categories.name
ORDER BY
  total_revenue DESC;


//task 4

SELECT
  Customers.name,
  SUM(Orders.total_amount) AS total_purchase_amount
FROM
  Customers
JOIN Orders ON Customers.customer_id = Orders.customer_id
GROUP BY
  Customers.name
ORDER BY
  total_purchase_amount DESC
LIMIT 5;
