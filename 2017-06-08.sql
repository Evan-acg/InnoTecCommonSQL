SELECT GRI* FROM PINVOICED WHERE NUM_0 = '0201PIH17040030' AND QTYUOM_0 = 0

SELECT * FROM SORDERQ WHERE FMI_0 = 3 AND FMINUM_0 = '' AND SOHNUM_0 = '0101SOH17060069'
SELECT * FROM PORDERQ WHERE SOHNUM_0 = '0101SOH17060069' AND SOPLIN_0 = '1000'

SELECT * FROM PORDERQ WHERE POHNUM_0 = '0101POH17050557' AND POPLIN_0 = '7000'

SELECT * FROM SORDERQ WHERE ITMREF_0 = 'MCZ0630' AND QTY_0 = '100.0000000000000'
SELECT * FROM PORDERQ WHERE ITMREF_0 = 'MCZ0630' AND QTYSTU_0 = '100.0000000000000'

--UPDATE SORDERQ SET FMINUM_0 = '0101POH17050557',FMILIN_0 = '7000' WHERE SOHNUM_0 = '0101SOH17050349' AND SOPLIN_0 = '28000'
--UPDATE PORDERQ SET SOHNUM_0 = '0101SOH17050349',SOPLIN_0 = '28000' WHERE POHNUM_0 = '0101POH17050557' AND POPLIN_0 = '7000'

SELECT * FROM AUDITH T1 LEFT JOIN AUDITL T2 ON T1.SEQ_0 = T2.SEQ_0 WHERE T1.ID1_0 = '0101SOH17060069'
SELECT * FROM AUDITH WHERE ID1_0 = '0101SOH17060069'
SELECT * FROM AUDITL WHERE SEQ_0 = '1909262'




SELECT  * FROM SDELIVERYD WHERE SDHNUM_0 = '0101SDH17060092'


SELECT * FROM AUDITH WHERE ID1_0 = '0101SDH17060092'

SELECT * FROM AUTILIS WHERE USR_0 = '0031'



SELECT * FROM PORDERQ WHERE BPSNUM_0 = 'CHN-JS-8127' AND CREDAT_0 BETWEEN '2017-04-01' AND '2017-04-30'

SELECT * FROM PRECEIPT WHERE BPSNUM_0 = 'CHN-JS-8127' AND CREDAT_0 = '2017-03-21'

SELECT * FROM PRECEIPTD WHERE PTHNUM_0 = '0201REC17030035'AND PTDLIN_0 = '3000'

SELECT * FROM PRETURND WHERE ITMREF_0 = 'ICU0003-08'

SELECT * FROM SORDERQ WHERE SOHNUM_0 = '0101SOH17060135'
SELECT * FROM PORDERQ WHERE POHNUM_0 = '0101POH17060206' AND POPLIN_0 =  '1000'

SELECT * FROM PORDERP WHERE GROPRI_0 = 0
