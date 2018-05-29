SELECT	T1.MFGNUM_0,
		T1.MFGFCY_0,
		T1.ITMREF_0,
		T1.RETQTY_0,
		T1.USEQTY_0,
		T1.RETQTY_0 - T1.USEQTY_0
FROM MFGMAT T1	
LEFT JOIN MFGHEAD T2 ON T1.MFGNUM_0 = T2.MFGNUM_0 
WHERE T2.MFGSTA_0 <> '4' 
	AND T1.ITMREF_0 = 'IKH0601'
	AND T1.MFGFCY_0 = '0202'
	AND T1.USEQTY_0 < T1.RETQTY_0

GROUP BY T1.MFGFCY_0,T1.ITMREF_0
,
		SUM(T1.RETQTY_0 - T1.USEQTY_0) QTY_0 
SELECT * FROM MFGMAT WHERE ITMREF_0 = 'IKH0601'