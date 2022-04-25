USE cosc2307_assignment2;

-- 1
SELECT count(distinct Pname)
FROM svekariya_parts;

-- 2
SELECT * 
FROM svekariya_supplier
WHERE CITY = "LONDON";

-- 3
SELECT sp.SNO, sp.PNO
FROM svekariya_supplier s 
JOIN svekariya_sp sp
	ON s.SNO = sp.SNO 
    WHERE Qty < 100;
    
-- 4
SELECT *
FROM svekariya_parts
WHERE City = "London"
ORDER BY PNO;

-- 5
SELECT SNO,Sname
FROM svekariya_supplier
WHERE CITY = "LONDON";

-- 6
SELECT Pname
FROM svekariya_parts
WHERE colour = "blue";

-- 7
SELECT PNO
FROM svekariya_parts
WHERE Weight <17
ORDER BY PNO;

-- 8
SELECT *
FROM svekariya_sp AS sp
RIGHT JOIN svekariya_parts AS p
ON sp.PNO = p.PNO
WHERE sp.SNO = "S1";

-- 9
SELECT Colour
FROM svekariya_sp AS sp
RIGHT JOIN svekariya_parts AS p
ON sp.PNO = p.PNO
WHERE sp.SNO = "S2";

-- 10
SELECT distinct City
FROM svekariya_sp AS sp
LEFT JOIN svekariya_supplier AS s
ON sp.SNO = s.SNO
WHERE sp.PNO = "P2";

-- 11
SELECT distinct sp.SNO
FROM svekariya_parts AS p
LEFT JOIN svekariya_sp AS sp
ON p.PNO = sp.PNO
WHERE p.City = "London" OR p.City = "Paris";

