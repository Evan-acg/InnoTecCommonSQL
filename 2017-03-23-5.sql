SELECT * FROM XMFGRQD
SELECT TOP 10 * FROM YMFGRQD









SELECT T1.VCRNUM_0
FROM XMFGRQD T1
	INNER JOIN YMFGRQD T2 ON T1.OVCRNUM_0 = T2.VCRNUM_0
WHERE OVCRNUM_0 = 'MRQ020217010006' 
GROUP BY T1.VCRNUM_0,T1.VCRLIN_0

SELECT * FROM XMFGRQD WHERE VCRNUM_0 = 'MRS020217010002'

SELECT *
FROM XMFGRQD T1
	LEFT OUTER JOIN XMFGRQH T2 ON T1.VCRNUM_0 = T2.VCRNUM_0
	LEFT JOIN YMFGRQH T3 ON T1.VCRNUM_0 = T3.VCRNUM_0
	LEFT JOIN MFGITM T4 ON T3.ORDNUM_0 = T4.MFGNUM_0
WHERE T1.VCRNUM_0 = 'MRS020217010002'
