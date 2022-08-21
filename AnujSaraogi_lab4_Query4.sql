-- 4. Display all the orders along with product name ordered by a customer having Customer_Id=2

select ORD_ID, ORD_AMOUNT, ORD_DATE, product.PRO_NAME, CUS_ID from `order`
 join supplier_pricing as sp
 on `order`.PRICING_ID = sp.PRICING_ID
 join product
 on sp.PRO_ID = product.PRO_ID
 where CUS_ID = 2