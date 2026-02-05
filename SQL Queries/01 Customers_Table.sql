CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50),
    gender ENUM('Male', 'Female', 'Other'),
    signup_date DATE
);
