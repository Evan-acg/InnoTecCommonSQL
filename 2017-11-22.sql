SELECT ITMREF_0,SUM(QTYPCU_0) FROM STOCK WHERE ITMREF_0 = 'IHJ0786' AND STA_0 = 'A'  GROUP BY ITMREF_0

SELECT * FROM STOCK WHERE ITMREF_0 = 'ICU0003-09' AND STOFCY_0 = '0201' AND STA_0 = 'A'

SELECT TOP 100 * FROM ITMFACILIT
SELECT T1.ITMREF_0,T1.STOFCY_0,T2.ITMREF_0
FROM ITMFACILIT T1
	LEFT JOIN (SELECT ITMREF_0,FCY_0 FROM ROUOPE GROUP BY ITMREF_0,FCY_0) T2 ON T1.ITMREF_0 = T2.ITMREF_0 AND T1.STOFCY_0 = T2.FCY_0
WHERE T1.STOFCY_0 <> '0101' 
	AND T2.ITMREF_0 IS NULL

SELECT TOP 100 * FROM MFGHEAD
SELECT T2.ITMREF_0,T2.MFGFCY_0
FROM MFGHEAD T1
	LEFT JOIN MFGITM T2 ON T1.MFGNUM_0 = T2.MFGNUM_0 AND T1.MFGFCY_0 = T2.MFGFCY_0
WHERE T1.ROUNUM_0 <> T2.ITMREF_0
GROUP BY T2.ITMREF_0,T2.MFGFCY_0


SELECT ITMREF_0,STOFCY_0 FROM ITMFACILIT WHERE ITMREF_0 = N'MVS0690' AND STOFCY_0 <> '0101'


SELECT FMINUM_0,* FROM SORDERQ WHERE SOHNUM_0 = '0101SOH17110208'

SELECT * FROM ZSOYN WHERE SOHNUM_0 = '0101SOH17110208'



SELECT TOP 1000 * FROM ITMCOST WHERE YEA_0 = 2



SELECT T1.ITMREF_0,T1.STOFCY_0
FROM ITMFACILIT T1
	LEFT JOIN ITMCOST T2 ON T1.ITMREF_0 = T2.ITMREF_0 AND T1.STOFCY_0 = T2.STOFCY_0
WHERE T2.ITMREF_0 IS NULL