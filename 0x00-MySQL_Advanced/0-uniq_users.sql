-- SQL script that creates a table users
CREATE TABLE If NOT EXISTS users (
    id INT not NULL AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    name VARCHAR(255)
);
