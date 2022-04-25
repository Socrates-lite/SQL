CREATE TABLE `cosc2307_assignment2`.`svekariya_parts` (
 `PNO` VARCHAR(45) NOT NULL ,
 `Pname` VARCHAR(45) NOT NULL ,
 `Colour` VARCHAR(45) NOT NULL ,
 `Weight` INT NOT NULL ,
 `City` VARCHAR(45) NOT NULL ,
PRIMARY KEY (`PNO`),
UNIQUE INDEX `PNO_UNIQUE` (`PNO` ASC),
CONSTRAINT Status_check CHECK (Status>0) ); -- named constraint added check

CREATE TABLE `cosc2307_assignment2`.`svekariya_sp1` (
`SNO` VARCHAR(45) NOT NULL ,
`PNO` VARCHAR(45) NOT NULL ,
`Qty` DECIMAL(45,0) NOT NULL ,
PRIMARY KEY (`PNO`),
FOREIGN KEY (`SNO`) REFERENCES `cosc2307_assignment2`.`svekariya_supplier` (`SNO`),
CHECK (qty > 0));  -- regular CHECK

-- 1.2 A)
INSERT INTO svekariya_supplier VALUES('S5','ADAMS','30','ATHENS');

-- B)
INSERT INTO svekariya_sp1 VALUES('S7','P8','200');

-- C)
UPDATE svekariya_supplier set SNO = "SMITH" where SNO = "S1";

INSERT INTO svekariya_sp1 VALUES('S7','P8','200');

-- D)
UPDATE svekariya_supplier set SNO = "I" where SNO = "S1";

INSERT INTO svekariya_sp1 VALUES('S7','P8','200');

-- E)
DELETE FROM svekariya_parts where PNO = 'P1';

-- F)
INSERT INTO svekariya_parts VALUES('P6','BOLT','blue','20',null);

-- G)
UPDATE svekariya_supplier set Status = 0 where Status = '10';



