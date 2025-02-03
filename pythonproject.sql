CREATE DATABASE stocks;
USE stocks;
CREATE TABLE stock_info (
    stock_name VARCHAR(255) NOT NULL,
    price FLOAT NOT NULL,
    quantity INT NOT NULL,
    total FLOAT NOT NULL,
    buy_date DATE NOT NULL,
    sell_price FLOAT NOT NULL,
    sell_date DATE NOT NULL,
    profit FLOAT NOT NULL
);
CREATE TABLE login (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(100) NOT NULL 
);
ALTER TABLE login ADD CONSTRAINT unique_password UNIQUE (password);


CREATE TABLE register (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    FOREIGN KEY (username) REFERENCES login(username),
    FOREIGN KEY (password) REFERENCES login(password)
);


