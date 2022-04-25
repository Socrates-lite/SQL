-- PART A 1)

SHOW schemas;

-- 2)

CREATE Table svekariya_part6
SELECT * FROM svekariya_parts;

-- 3)
SELECT LENGTH(CITY) FROM svekariya_supplier;
ALTER TABLE svekariya_supplier MODIFY city VARCHAR(20);

-- 4)
SELECT * 
FROM information_schema WHERE tablename like 'svekariya'; 

-- 5) a)
ALTER TABLE `cosc2307_assignment2`.`svekariya_supplier` 
ADD PRIMARY KEY (`SNO`);

-- 5) b)
ALTER TABLE `cosc2307_assignment2`.`svekariya_sp` 
ADD PRIMARY KEY (`SNO`,`PNO`);

-- 5) c)
ALTER TABLE `cosc2307_assignment2`.`svekariya_parts` 
ADD UNIQUE INDEX `PNO_UNIQUE` (`PNO` ASC) ;


-- 5) d)
ALTER TABLE svekariya_sp
ADD FOREIGN KEY (SNO) REFERENCES svekariya_supplier(SNO);

-- 5) e)
ALTER TABLE `cosc2307_assignment2`.`svekariya_supplier` 
CHANGE COLUMN `SNAME` `SNAME` VARCHAR(45) NOT NULL;

-- 5) f)
alter TABLE svekariya_sp
 ADD CHECK (Qty > 0);
alter TABLE svekariya_parts 
ADD CHECK (Weight > 0);
