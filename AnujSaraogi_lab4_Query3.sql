-- 3: Display the total number of customers based on gender who have placed orders of worth atleast Rs.3000
SELECT customer.CUS_GENDER, COUNT(*)
FROM customer INNER JOIN `order` 
ON customer.CUS_ID = `order`.CUS_ID
AND `order`.ORD_AMOUNT >= 3000
GROUP BY customer.CUS_GENDER