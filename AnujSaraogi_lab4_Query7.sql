-- 7. Display the Id and Name of the Product ordered after “2021-10-05”.

SELECT product.PRO_ID, product.PRO_NAME FROM `order`
JOIN supplier_pricing as sp
ON `order`.PRICING_ID = sp.PRICING_ID
JOIN product
ON sp.PRO_ID = product.PRO_ID
WHERE `order`.ORD_DATE > '2021-10-05'