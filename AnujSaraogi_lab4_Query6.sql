-- 6. Find the least expensive product from each category and print the table with category id, name, product name and price of the product

SELECT product.CAT_ID, category.CAT_NAME, product.PRO_NAME, MIN(sp.SUPP_PRICE) AS price FROM product
JOIN category
ON product.CAT_ID = category.CAT_ID
JOIN supplier_pricing AS sp
ON product.PRO_ID = sp.PRO_ID
GROUP BY product.CAT_ID