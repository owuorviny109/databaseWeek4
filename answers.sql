-- Retrieve the 5 most recent payment dates along with the total payment amount for each date
SELECT paymentDate, SUM(amount) AS total_amount
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;


-- Calculate the average credit limit for each customer grouped by their name and country
SELECT customerNumber, country, AVG(creditLimit) AS average_credit_limit
FROM customers
GROUP BY customerName, country;


-- Calculate the total price for each product based on quantity ordered and price per unit
SELECT productCode, quantityOrdered, SUM(priceEach * quantityOrdered) AS total_price
FROM orderdetails
GROUP BY productCode, quantityOrdered;


-- Find the highest payment amount for each check number
SELECT checkNumber, MAX(amount) AS highest_amount
FROM payments
GROUP BY check_Number;