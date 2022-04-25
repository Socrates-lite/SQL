USE cosc2307_assignment2;

-- A
SELECT SNO, CITY
FROM svekariya_supplier;

-- B
SELECT * 
FROM svekariya_supplier
WHERE CITY = "LONDON";

-- C
SELECT SNAME
FROM svekariya_supplier
WHERE STATUS <10;

-- D
SELECT sp.SNO, sp.PNO
FROM svekariya_supplier s 
JOIN svekariya_sp sp
	ON s.SNO = sp.SNO 
    WHERE Qty < 100;
  
  -- E
SELECT sp.PNO, sp.SNO, Pname, Colour, Qty
FROM svekariya_parts p 
JOIN svekariya_sp sp
	ON p.PNO = sp.PNO 
	WHERE Qty < 100;

-- F
SELECT PNO, AVG(Qty)
FROM svekariya_sp
WHERE PNO = "P3";

-- G
SELECT PNO, MAX(Qty)
FROM svekariya_sp
WHERE PNO = "P2";

-- H
SELECT *
FROM svekariya_supplier
WHERE CITY = "Paris"
ORDER BY SNO;

-- I
SELECT s.SNO, SNAME, STATUS, CITY, Join_Date, PNO, Qty
FROM svekariya_supplier s
JOIN svekariya_sp sp
	ON s.SNO = sp.SNO
    WHERE QTY < 200;
    
-- J
SELECT *
FROM svekariya_parts
WHERE City = "London"
ORDER BY PNO;

-- K
SELECT 
    SNO, SNAME
FROM
    svekariya_supplier
WHERE
    CITY = 'Paris'
ORDER BY SNO;

-- L
SELECT Pname
FROM svekariya_parts
WHERE Colour = "blue";

-- M
SELECT PNO
FROM svekariya_parts
WHERE Weight <30
ORDER BY PNO;





    
