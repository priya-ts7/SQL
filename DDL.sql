CREATE DATABASE IF NOT EXISTS sales;

USE sales;

CREATE TABLE sales
(
	purchase_number INT NOT NULL PRIMARY KEY auto_increment,
    date_of_purchase DATE NOT NULL,
    cutomer_id INT,
    item_code VARCHAR(10) NOT NULL
);

CREATE TABLE customers
(
	customer_id INT NOT NULL PRIMARY KEY auto_increment,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email_address VARCHAR(255),
    number_of_complaints INT
);

SELECT * FROM sales.sales;

DROP TABLE customers;

CREATE TABLE customers                                                              
(  
    customer_id INT,  
    first_name varchar(255),  
    last_name varchar(255),  
    email_address varchar(255),  
    number_of_complaints int,  
	PRIMARY KEY (customer_id)  
);  

CREATE TABLE items                                                                                                                              
(  
    item_code varchar(255),   
    item varchar(255),   
    unit_price numeric(10,2),   
    company_id varchar(255),
	PRIMARY KEY (item_code)   
);  

CREATE TABLE companies   
(
    company_id varchar(255),   
	company_name varchar(255),  
    headquarters_phone_number int(12),   
	PRIMARY KEY (company_id)   
);

DROP TABLE sales;
DROP TABLE customers;
DROP TABLE items;
DROP TABLE companies;

CREATE TABLE customers 
(
    customer_id INT AUTO_INCREMENT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email_address VARCHAR(255),
    number_of_complaints INT,
	PRIMARY KEY (customer_id)
);

ALTER TABLE customers
ADD COLUMN gender ENUM('M', 'F') AFTER last_name;

INSERT INTO customers (first_name, last_name, gender, email_address, number_of_complaints)
VALUES ('John', 'Mackinley', 'M', 'john.mckinley@365careers.com', 0);

CREATE TABLE companies
(
    company_id VARCHAR(255),
    company_name VARCHAR(255) DEFAULT 'X',
    headquarters_phone_number VARCHAR(255),
	PRIMARY KEY (company_id),
	UNIQUE KEY (headquarters_phone_number)
);

DROP TABLE companies;
