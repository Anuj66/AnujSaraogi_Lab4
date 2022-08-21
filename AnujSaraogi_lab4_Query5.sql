-- 5. Display the Supplier details who can supply more than one product.

SELECT supplier.SUPP_ID, supplier.SUPP_NAME, supplier.SUPP_CITY, supplier.SUPP_PHONE, product_count
FROM supplier
JOIN (SELECT count(*) as product_count, SUPP_ID FROMfrom supplier_pricing
    GROUP BY SUPP_ID ) as res
ON supplier.SUPP_ID = res.SUPP_ID
WHERE product_count > 1