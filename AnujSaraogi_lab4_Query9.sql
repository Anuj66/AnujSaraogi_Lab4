-- 9. Create a stored procedure to display supplier id, name, rating and Type_of_Service. For Type_of_Service, If rating =5, print “Excellent Service”,If rating >4 print “Good Service”, If rating >2 print “Average Service” else print “Poor Service”.

DELIMITER //

CREATE PROCEDURE typeOfService()
BEGIN
	SELECT supplier.SUPP_ID,supplier.SUPP_NAME, rating.RAT_RATSTARS,IF(RAT_RATSTARS < 2, "POOR SERVICE", 
	IF(RAT_RATSTARS < 4, "AVERAGE SERVICE", 
	IF(RAT_RATSTARS < 5, "GOOD SERVICE", "EXCELLENT SERVICE"))) as TYPE_OF_SERVICE from rating
	JOIN `order`
	ON `order`.ORD_ID = rating.ORD_ID
	JOIN supplier_pricing as sp
	ON sp.PRICING_ID = `order`.PRICING_ID
	JOIN supplier
	ON supplier.SUPP_ID = sp.SUPP_ID;
END //

DELIMITER ;

CALL `gl- lab_4`.`typeOfService`();