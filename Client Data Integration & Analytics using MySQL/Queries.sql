CREATE DATABASE xeno;
USE xeno;

DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
  customer_id     INT PRIMARY KEY,
  full_name       VARCHAR(150) NOT NULL,
  email           VARCHAR(255) NOT NULL,
  phone_number    VARCHAR(30),
  city            VARCHAR(100),
  signup_date     DATE NOT NULL,

  INDEX idx_city (city),
  INDEX idx_signup_date (signup_date),
  UNIQUE KEY uk_email (email)
);
-- 1.1. All customers from 'Delhi'
SELECT *
FROM customers
WHERE city = 'Delhi';

-- 1.2. Signups in the last 30 days (Assume from 2025-04-16)
SELECT COUNT(*) AS signups_last_30_days
FROM customers
WHERE signup_date >= DATE('2025-04-16') - INTERVAL 30 DAY
  AND signup_date <= DATE('2025-04-16');
  
-- 1.3. Unique cities
SELECT DISTINCT city
FROM customers
ORDER BY city;

-- 1.4. Top 3 cities by number of signups
SELECT city, COUNT(*) AS signup_count
FROM customers
GROUP BY city
ORDER BY signup_count DESC
LIMIT 3;

CREATE TABLE orders (
  customer_id INT NOT NULL,
  order_id    INT PRIMARY KEY,
  amount      DECIMAL(10,2) NOT NULL
);

-- Example
INSERT INTO orders (customer_id, order_id, amount) VALUES
(1, 10001, 950.00),
(2, 10002, 1299.00),
(3, 10003, 499.00);

-- 1.5. Customers who never placed an order (orders: customer_id, order_id, amount)
SELECT c.*
FROM customers AS c
LEFT JOIN orders AS o
  ON o.customer_id = c.customer_id;
  
-- 2.1. Flag Gmail emails
ALTER TABLE customers
  ADD COLUMN is_gmail ENUM('Yes','No') NULL;

UPDATE customers
SET is_gmail = CASE
  WHEN LOWER(SUBSTRING_INDEX(email, '@', -1)) = 'gmail.com' THEN 'Yes'
  ELSE 'No'
END;

-- 2.2. Extract first name
ALTER TABLE customers
  ADD COLUMN first_name VARCHAR(100);

UPDATE customers
SET first_name = SUBSTRING_INDEX(full_name, ' ', 1);

-- 2.3. Month name of signup
ALTER TABLE customers
  ADD COLUMN signup_month VARCHAR(20);

UPDATE customers
SET signup_month = DATE_FORMAT(signup_date, '%M');

-- 2.4. Gmail signups by day of week
SELECT DAYNAME(signup_date) AS signup_dow, COUNT(*) AS gmail_signups
FROM customers
WHERE is_gmail = 'Yes'
GROUP BY DAYNAME(signup_date)
ORDER BY gmail_signups DESC;

-- 2.5. VIPs: Delhi/Mumbai/Bangalore in last 60 days from 2025-04-16
CREATE TABLE vip_customers AS
SELECT *
FROM customers
WHERE city IN ('Delhi','Mumbai','Bangalore')
  AND signup_date >= DATE('2025-04-16') - INTERVAL 60 DAY
  AND signup_date <= DATE('2025-04-16');

SELECT COUNT(*) AS vip_count FROM vip_customers;
SELECT * FROM vip_customers LIMIT 20;

-- 3.1. Monthly signup count (past 6 months relative to 2025-04-16)
SELECT DATE_FORMAT(signup_date, '%Y-%m') AS month,COUNT(*) AS signup_count
FROM customers
WHERE signup_date >= DATE('2025-04-16') - INTERVAL 6 MONTH
  AND signup_date <= DATE('2025-04-16')
GROUP BY DATE_FORMAT(signup_date, '%Y-%m')
ORDER BY month;

-- 3.2. Cities with > 20 customers
SELECT city, COUNT(*) AS customer_count
FROM customers
GROUP BY city
HAVING COUNT(*) > 20
ORDER BY customer_count DESC;

-- 3.3. Date with the highest number of signups
SELECT signup_date, COUNT(*) AS signup_count
FROM customers
GROUP BY signup_date
ORDER BY signup_count DESC, signup_date DESC
LIMIT 1;

-- 3.4. Add signup_day and find the day with highest signups
ALTER TABLE customers
  ADD COLUMN signup_day VARCHAR(20);
UPDATE customers
SET signup_day = DAYNAME(signup_date);

SELECT signup_day, COUNT(*) AS signup_count
FROM customers
GROUP BY signup_day
ORDER BY signup_count DESC
LIMIT 1;