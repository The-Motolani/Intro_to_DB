CREATE DATABASE IF NOT EXISTS alx_book_store

CREATE TABLE Books (
book_id INT AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(130) NOT NULL,
FOREIGN KEY(author_id) REFERENCES Authors(author_id),
price FLOAT,
publication_date DATE,
):

CREATE TABLE Authors (
author_id INT PRIMARY KEY AUTO_INCREMENT,
author_name VARCHAR(215),
);

CREATE TABLE Customers (
customer_id INT PRIMARY KEY AUTO_INCREMENT,
customer_name VARCHAR(215).
email VARCHAR(215),
address TEXT,
);

CREATE TABLE Orders (
order_id INT PRIMARY KEY AUTO_INCREMENT,
FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
order_date DATE,
);

CREATE TABLE Order_Details (
orderdetailid INT PRIMARY KEY AUTO_INCREMENT,
FOREIGN KEY (order_id) REFERENCES Orders(order_id),
FOREIGN KEY (book_id) REFERENCES Books(book_id),
quantity FLOAT,
);