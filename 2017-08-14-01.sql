--CREATE TRIGGER UPDATEDELIVERQTY
--ON SORDERQ T3
--FOR UPDATE
--AS 
--BEGIN   

--IF UPDATE(DLVQTY_0) 
--	UPDATE T2
--	SET T2.LFTQTY_0 =  T1.DLVQTY_0
--	FROM INSERTED T1 ,ZTSDELIVERYD T2 
--	WHERE T3.SOHNUM_0 = T2.SOHNUM_0 
--		AND T3.ITMREF_0 = T2.ITMREF_0 

--END


--SELECT TOP 1000 DLVQTY_0,* FROM SORDERQ
--SELECT TOP 1000 * FROM ZTSDELIVERYD

SELECT * FROM TEMP1
SELECT * FROM TEMP2
INSERT INTO TEMP1 (SOHNUM_0,SOPLIN_0,DLVQTY_0) VALUES('0101SOH17080092','2000','100')
UPDATE TEMP1 SET DLVQTY_0 = 50000 WHERE SOHNUM_0 = '0101SOH17080062' AND SOPLIN_0 = '1000'
UPDATE TEMP2 SET DLVQTY_0 = 100 WHERE SOHNUM_0 = '0101SOH17080092' AND SOPLIN_0 = '2000'


ALTER TRIGGER TR1
ON TEMP1
FOR UPDATE
AS
BEGIN
IF UPDATE(DLVQTY_0)
	UPDATE T2 SET T2.DLVQTY_0 = T3.DLVQTY_0
	FROM TEMP2 T2 ,INSERTED T3
		WHERE T2.SOHNUM_0 = T3.SOHNUM_0 
			AND T2.SOPLIN_0 = T3.SOPLIN_0
END

--CREATE TABLE TEMP2 (
--SOHNUM_0 NVARCHAR(100),
--SOPLIN_0 NVARCHAR(10),
--DLVQTY_0 NVARCHAR(100)
--)



