SELECT product_name
FROM orders o JOIN customers c on c.id = o.customer_id;