SELECT * FROM SDELIVERYD WHERE SDHNUM_0 IN('0101SDH17040244','0101SDH17030694')

SELECT * FROM AUTILIS WHERE USR_0 = '0061'

SELECT * FROM STOJOU WHERE ITMREF_0 = 'IVF0082-10' ORDER BY VCRNUM_0

SELECT * FROM STOJOU WHERE ITMREF_0 = 'MCF0971'

SELECT ITMREF_0,ITMDES1_0,STU_0 FROM ITMMASTER



SELECT FMINUM_0,FMILIN_0,* FROM SORDERQ WHERE SOQSTA_0 <> '3' AND FMI_0 = '3' AND FMINUM_0 = '' AND SOHNUM_0 = '0101SOH17030574'

SELECT * FROM PORDERQ WHERE ITMREF_0 = 'ICV0627' AND QTYSTU_0 = 400

SELECT * FROM PORDERQ WHERE SOHNUM_0 = '0101SOH17030574' AND ITMREF_0 = 'ICV0627-01'

UPDATE SORDERQ SET FMINUM_0 = '0101POH17030869',FMILIN_0 = '4000' WHERE SOHNUM_0 = '0101SOH17030574' AND SOPLIN_0 = '4000'

SELECT * FROM SORDERQ WHERE SOHNUM_0 = '0101SOH17030574' AND ITMREF_0 = 'ICV0627'


SELECT * FROM AUTILIS WHERE PRFFCT_0 = 'YSALA'

SELECT PRFFCT_0,COUNT(PRFFCT_0) FROM AUTILIS GROUP BY PRFFCT_0
SELECT * 
FROM AUDITH T1
	LEFT JOIN AUDITL T2 ON T1.SEQ_0 = T2.SEQ_0
WHERE T1.ID1_0 = '0101SOH17030574'
ORDER BY T1.SEQ_0