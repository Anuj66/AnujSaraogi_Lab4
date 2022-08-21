-- 8. Display customer name and gender whose names start or end with character 'A'.

SELECT CUS_NAME, CUS_GENDER from customer WHERE CUS_NAME LIKE 'a%' OR CUS_NAME LIKE '%a'