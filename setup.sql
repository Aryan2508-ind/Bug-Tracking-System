CREATE DATABASE IF NOT EXISTS bug_tracker;
USE bug_tracker;

CREATE TABLE IF NOT EXISTS users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL,
    role ENUM('Admin', 'Developer', 'Tester') DEFAULT 'Tester'
);

CREATE TABLE IF NOT EXISTS bugs (
    bug_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    priority ENUM('Low', 'Medium', 'High') DEFAULT 'Medium',
    status ENUM('Open', 'In-Progress', 'Resolved') DEFAULT 'Open'
);
