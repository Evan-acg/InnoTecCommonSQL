SELECT TOP 1000 * FROM SORDERQ WHERE SOHNUM_0 = '0202SOH17090048'
SELECT TOP 1000 * FROM SORDER WHERE SOHNUM_0 = '0202SOH17090048'
SELECT TOP 1000 * FROM PORDERQ WHERE POHNUM_0 = '0101POH17090163'
SELECT TOP 1000 * FROM SORDERQ WHERE FMINUM_0 = '0101POH17090163'
SELECT TOP 1000 * FROM ZMITK


SELECT TOP 1000 * FROM SDELIVERYD WHERE SDHNUM_0 = '0101SDH17090349'

SELECT TOP 1000 * FROM ORDERS WHERE ITMREF_0 = 'IGG0020' AND VCRNUM_0 = '0202SOH17090090'

SELECT * FROM ORDERS WHERE VCRNUM_0 IN('0202SOH17090090','0202SOH17090092')
SELECT * FROM SORDERQ WHERE SOHNUM_0 IN('0202SOH17090090','0202SOH17090092')

SELECT * FROM ITMCATEG


0201SOH17090001


SELECT SDHNUM_0 FROM SDELIVERYD WHERE SOHNUM_0 IN(N'0101SOH17080504',N'0101SOH17080474',N'0101SOH17070046',N'0101SOH17070598',N'0101SOH17080125',N'0101SOH17080298') GROUP BY SDHNUM_0


--SELECT * FROM AUDITH T1 LEFT JOIN AUDITL T2 ON T1.SEQ_0 = T2.SEQ_0 WHERE ID1_0 = '0101SDH17080260'