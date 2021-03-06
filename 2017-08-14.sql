CREATE TRIGGER UPDATEDELIVERQTY
ON SORDERQ
FOR UPDATE
AS 
BEGIN   
IF UPDATE(DLVQTY_0) 
	UPDATE T2
		SET T2.DLVQTY_0 = T1.DLVQTY_0,
			T2.LFTQTY_0 = T2.QTY_0 - T2.DLVQTY_0
		FROM INSERTED T1 ,ZTSDELIVERYD T2 
		WHERE T1.SOHNUM_0 = T2.SOHNUM_0 
			AND T1.ITMREF_0 = T2.ITMREF_0
			AND T1.BPCORD_0 = T2.BPCORD_0
			AND T1.ITMREF_0 = T2.ITMREF_0
END


SELECT * FROM ZTSDELIVERYD
--DELETE FROM ZTSDELIVERYD

SELECT * FROM SORDERP WHERE ITMREF_0 = N'IHJ0035' ORDER BY GROPRI_0

SELECT USR_0,NOMUSR_0 FROM AUTILIS 

SELECT * FROM SORDERQ WHERE SOHNUM_0 = '0201SOH17070292'

UPDATE T1 
SET T1.DLVQTY_0 = T2.DLVQTY_0,
	T1.LFTQTY_0 = T2.QTY_0 - T2.DLVQTY_0 
FROM ZTSDELIVERYD T1 
	LEFT JOIN SORDERQ T2 
		ON T1.SOHNUM_0 = T2.SOHNUM_0 
			AND T1.SOPLIN_0 =  T2.SOPLIN_0 
			AND T1.BPCORD_0 = T2.BPCORD_0 
			AND T1.ITMREF_0 = T2.ITMREF_0

SELECT * FROM AUTILIS




SELECT TOP 1000
		T1.ITMREF_0,
		T1.ITMDES1_0,
		T1.QTY_0,
		T1.STU_0,
		T3.ZCUSNUM_0,
		T1.SOHNUM_0,
		T3.ZRMK_0,
		T3.FCY_0,
		T7.BPCORD_0,
		T7.BPCNAM_0,
		T1.CREDAT_0,
		T1.SDHNUM_0,
		T4.TEL_0,
		T4.FAX_0,
		T4.WEB_0,
		T4.MOB_0,
		T5.CNTLNA_0 + CNTFNA_0 CNTLNA_0,
		T5.CNTETS_0,
		T5.CNTFAX_0,
		T5.CNTMOB_0,
		T6.BPAADDLIG_0
FROM SDELIVERYD T1
	LEFT JOIN SORDER T7 ON T1.SOHNUM_0 = T7.SOHNUM_0
	LEFT JOIN SDELIVERY T2 ON T1.SDHNUM_0 = T2.SDHNUM_0
	LEFT JOIN ZSOYN1 T3 ON T1.SOHNUM_0 = T3.SOHNUM_0 AND T1.SOPLIN_0 = T3.SOPLIN_0
	LEFT JOIN CONTACT T4 ON T7.BPCORD_0 = T4.BPANUM_0 AND T7.CNDNAM_0 = T4.CCNCRM_0
	LEFT JOIN CONTACTCRM T5 ON T7.CNDNAM_0 = T5.CNTNUM_0
	LEFT JOIN BPADDRESS T6 ON T7.BPCORD_0 = T6.BPANUM_0
WHERE T1.SDHNUM_0 BETWEEN N'0101SDH17080336' AND N'0101SDH17080336'
	AND T1.CREDAT_0 BETWEEN N'2017-08-01' AND N'2017-08-21'
ORDER BY T1.SDHNUM_0,T1.SDDLIN_0

SELECT TOP 1000 * FROM SORDER
SELECT * FROM CONTACT

SELECT QTYPUU_0,* FROM PORDERQ WHERE ITMREF_0 = 'IGS0007-02'