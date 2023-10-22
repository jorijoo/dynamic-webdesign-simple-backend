-- NODE.JS AND MYSQL BACKEND
-- OAMK assignment
--
-- Copyright Jori Hiltunen 2023

DROP DATABASE IF EXISTS shoppinglist;

CREATE DATABASE shoppinglist;

USE shoppinglist;

CREATE TABLE item (
    id INT PRIMARY KEY AUTO_INCREMENT,
    description VARCHAR(255) NOT NULL,
    amount SMALLINT UNSIGNED NOT NULL
);

INSERT INTO
    item (description, amount)
VALUES
    ('Test item', 1),
    ('Second item', 5),
    ('Third item', 32),
    ('Fourth item', 7),
    ('Fifth item', 99),
    ('Sixth item', 56);