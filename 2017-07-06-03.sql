UPDATE T1 SET T1.FMINUM_0 = T2.POHNUM_0,T1.FMILIN_0 = T2.POPLIN_0 
FROM SORDERQ T1 LEFT JOIN PORDERQ T2 ON T1.SOHNUM_0 = T2.SOHNUM_0 AND T1.SOPLIN_0 = T2.SOPLIN_0 
WHERE T1.FMI_0 = '3'
	AND T1.FMINUM_0 = ''
	AND T2.POHNUM_0 IS NOT NULL
	AND (T1.CREUSR_0 <> '0078' OR T1.UPDUSR_0 <> '0078')



SELECT * FROM SORDERQ WHERE ITMREF_0 = 'IHQ0803'


SELECT * FROM PORDERQ WHERE POHNUM_0 = '0202POH17070071'



SELECT * FROM BOMD WHERE ITMREF_0 = 'IVB0059'


SELECT * FROM SORDERP WHERE SOHNUM_0 = '0101SOH17070046'


SELECT * FROM AUDITH T1 LEFT JOIN AUDITL T2 ON T1.SEQ_0 = T2.SEQ_0 WHERE T1.ID1_0 = '0101SOH17070046'