SELECT * FROM PORDERQ WHERE POHNUM_0 = ''

SELECT * FROM ORDERS WHERE WIPNUM_0 = 'SUG0101000001871837'


SELECT * FROM SORDERQ WHERE DATEDIFF(DAY,DEMDLVDAT_0,GETDATE()) = 3 AND SALFCY_0 <> '0101'


SELECT MFGNUM_0,(COUNT(MFGNUM_0)) FROM MFGITM WHERE MFGFCY_0 = '0201' GROUP BY MFGNUM_0



SELECT MFGNUM_0,ITMREF_0,EXTQTY_0 FROM MFGITM WHERE MFGFCY_0 = '0201' ORDER BY MFGNUM_0

SELECT T1.MFGNUM_0,T1.ITMREF_0,T1.EXTQTY_0,T2.QTYSTU_0
FROM MFGITM T1
	LEFT JOIN STOCK T2 ON T1.ITMREF_0 = T2.ITMREF_0
WHERE LOC_0 = 'M01'

SELECT * FROM STOCK
SELECT ITMREF_0,QTYSTU_0,*FROM STOCK WHERE LOC_0 = 'M01' AND STOFCY_0 = '0201' AND STA_0 = 'A' AND ITMREF_0 = 'IHJ0300'
SELECT ITMREF_0,SUM(QTYSTU_0) AS 'A״̬���' FROM STOCK WHERE  LOC_0 = 'M01' AND STOFCY_0 = '0201' AND STA_0 = 'A' GROUP BY ITMREF_0


