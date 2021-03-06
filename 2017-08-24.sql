SELECT A1.*,ISNULL(A2.QTYPCU_0,0),ISNULL(A3.QTYSTU_0,0)
FROM(
	SELECT T2.ITMREF_0,T2.ITMDES1_0,T2.STU_0
	FROM MFGMAT T1
		LEFT JOIN ITMMASTER T2 ON T1.ITMREF_0 = T2.ITMREF_0
		LEFT JOIN ITMFACILIT T3 ON T1.ITMREF_0 = T3.ITMREF_0 AND T3.STOFCY_0 = '0202'
	WHERE T1.MATSTA_0 < 3
		AND T1.MFGFCY_0 = '0202'
		AND T1.RETQTY_0 <> USEQTY_0 
		AND T3.REOCOD_0 = '2'
	GROUP BY T2.ITMREF_0,T2.ITMDES1_0,T2.STU_0
	) A1
LEFT JOIN (SELECT ITMREF_0,SUM(QTYPCU_0) QTYPCU_0 FROM STOCK WHERE STOFCY_0 = N'0202' AND STA_0 NOT LIKE N'R%' GROUP BY ITMREF_0) A2 ON A1.ITMREF_0 = A2.ITMREF_0
LEFT JOIN (SELECT ITMREF_0,SUM(QTYSTU_0) QTYSTU_0 FROM STOALL WHERE STOFCY_0 = '0202' GROUP BY ITMREF_0) A3 ON A1.ITMREF_0 = A3.ITMREF_0


SELECT FCY_0 FROM FACILITY	


SELECT A1.*,ISNULL(A2.QTYPCU_0,0),ISNULL(A3.QTYSTU_0,0)  FROM(     SELECT T2.ITMREF_0,T2.ITMDES1_0,T2.STU_0     FROM MFGMAT T1         LEFT JOIN ITMMASTER T2 ON T1.ITMREF_0 = T2.ITMREF_0         LEFT JOIN ITMFACILIT T3 ON T1.ITMREF_0 = T3.ITMREF_0 AND T3.STOFCY_0 = '0201'     WHERE T1.MATSTA_0 < 3         AND T1.MFGFCY_0 = '0201'         AND T1.RETQTY_0 <> USEQTY_0         AND T3.REOCOD_0 = '2'     GROUP BY T2.ITMREF_0,T2.ITMDES1_0,T2.STU_0     ) A1  LEFT JOIN (SELECT ITMREF_0,SUM(QTYPCU_0) QTYPCU_0 FROM STOCK WHERE STOFCY_0 = N'0201' AND STA_0 NOT LIKE N'R%' GROUP BY ITMREF_0) A2 ON A1.ITMREF_0 = A2.ITMREF_0  LEFT JOIN (SELECT ITMREF_0,SUM(QTYSTU_0) QTYSTU_0 FROM STOALL WHERE STOFCY_0 = '0201' GROUP BY ITMREF_0) A3 ON A1.ITMREF_0 = A3.ITMREF_0 ORDER BY A1.ITMREF_0

SELECT A1.*,ISNULL(A2.QTYPCU_0,0),ISNULL(A3.QTYSTU_0,0)
FROM
	(SELECT T2.ITMREF_0,
			T2.ITMDES1_0,
			T2.STU_0 
	FROM MFGITM T1 
		LEFT JOIN ITMMASTER T2 ON T1.ITMREF_0 = T2.ITMREF_0 
	WHERE T1.MFGFCY_0 = N'0201' 
		AND T1.MFGSTA_0 <> 4 
		AND T1.ITMSTA_0 < 3
	GROUP BY T2.ITMREF_0,T2.ITMDES1_0,T2.STU_0
	) A1
LEFT JOIN (SELECT ITMREF_0,SUM(QTYPCU_0) QTYPCU_0 FROM STOCK WHERE STOFCY_0 = N'0201' AND STA_0 NOT LIKE N'R%' GROUP BY ITMREF_0) A2 ON A1.ITMREF_0 = A2.ITMREF_0
LEFT JOIN (SELECT ITMREF_0,SUM(QTYSTU_0) QTYSTU_0 FROM STOALL WHERE STOFCY_0 = N'0201' GROUP BY ITMREF_0) A3 ON A1.ITMREF_0 = A3.ITMREF_0

 SELECT A1.*,ISNULL(A2.QTYPCU_0,0),ISNULL(A3.QTYSTU_0,0)  
 FROM
	(SELECT T2.ITMREF_0,            T2.ITMDES1_0,              T2.STU_0
	FROM MFGITM T1          
	LEFT JOIN ITMMASTER T2 ON T1.ITMREF_0 = T2.ITMREF_0      
	WHERE T1.MFGFCY_0 = N'0201'          
	AND T1.MFGSTA_0 <> 4          
	AND T1.ITMSTA_0 < 3      
	GROUP BY T2.ITMREF_0,T2.ITMDES1_0,T2.STU_0      ) A1  
LEFT JOIN (SELECT ITMREF_0,SUM(QTYPCU_0) QTYPCU_0 FROM STOCK WHERE STOFCY_0 = N'0201' AND STA_0 NOT LIKE N'R%' GROUP BY ITMREF_0) A2 ON A1.ITMREF_0 = A2.ITMREF_0  
LEFT JOIN (SELECT ITMREF_0,SUM(QTYSTU_0) QTYSTU_0 FROM STOALL WHERE STOFCY_0 = N'0201' GROUP BY ITMREF_0) A3 ON A1.ITMREF_0 = A3.ITMREF_0

SELECT ITMREF_0,MFGFCY_0,STRDAT_0,SUM(RMNEXTQTY_0) FROM MFGITM WHERE MFGFCY_0 = N'0201' AND MFGSTA_0 <> 4 AND ITMSTA_0 < 3 AND ITMREF_0 = 'ICD0067-02' GROUP BY ITMREF_0,MFGFCY_0,STRDAT_0

