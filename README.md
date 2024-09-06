# SQL

Database Schema
Assume we have the following database schema for an e-commerce platform:


Customers: Information about customers.

customer_id (Primary Key)
name
email
phone
registration_date



Products: Information about products.

product_id (Primary Key)
product_name
category
price




Orders: Information about orders placed.

order_id (Primary Key)
customer_id (Foreign Key referencing Customers)
order_date



OrderItems: Information about each product in an order.

order_item_id (Primary Key)
order_id (Foreign Key referencing Orders)
product_id (Foreign Key referencing Products)
quantity



Reviews: Information about product reviews.

review_id (Primary Key)
product_id (Foreign Key referencing Products)
customer_id (Foreign Key referencing Customers)
rating (Scale 1-5)
review_date
comments
