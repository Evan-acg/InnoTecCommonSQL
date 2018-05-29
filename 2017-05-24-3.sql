SELECT 	T1.ITMREF_0 N'产品代码',
		T1.ITMDES1_0 N'产品名称',
		T1.STU_0 N'单位',
		T1.QTYPCU_0 N'盘盈数量',
		T3.MATTOT_0 N'成本',
		T1.QTYPCU_0 * T3.MATTOT_0  N'金额'
FROM SMVTD T1
	LEFT JOIN SMVTH T2 ON T1.VCRNUM_0 = T2.VCRNUM_0
	LEFT JOIN ITMCOST T3 ON T1.ITMREF_0 = T3.ITMREF_0 AND T3.STOFCY_0 = '0203' AND T3.ITCSEQ_0 = (SELECT MAX(ITCSEQ_0) FROM ITMCOST)
WHERE T2.TRSCOD_0 = 'R02'
	AND T1.CREUSR_0 = 'ALAN'
	AND T1.CREDAT_0 >= '2017-05-20'

SELECT T6.ITMREF_0,
		T6.QTY_0,
		T7.ITMDES1_0,
		T7.STU_0,
		T8.MATTOT_0,
		T6.QTY_0 * T8.MATTOT_0
FROM(
	SELECT T5.ITMREF_0,
			SUM(T5.QTYPCU_0) QTY_0
	FROM(
	(SELECT T1.ITMREF_0,T1.QTYPCU_0 FROM SMVTD T1 LEFT JOIN SMVTH T2 ON T1.VCRNUM_0 = T2.VCRNUM_0 WHERE T2.TRSCOD_0 = 'R02' AND T1.CREUSR_0 = 'ALAN'AND T1.CREDAT_0 >= '2017-05-20') 
	UNION ALL ((SELECT A.ITMREF_0,
							ISNULL(B.CPLQTY_0 * (A.RETQTY_0/B.EXTQTY_0) - A.USEQTY_0,0) QTY_0
					FROM MFGMAT A,MFGITM B 
					WHERE (A.RETQTY_0 - A.USEQTY_0) <> 0 
						 AND A.MATSTA_0 = 3 
						 AND A.MFGNUM_0 = B.MFGNUM_0 
						 AND B.MFGLIN_0 = 1000
						 AND A.MFGFCY_0 = '0203'))) T5
	GROUP BY T5.ITMREF_0,T5.QTYPCU_0) T6
	LEFT JOIN ITMMASTER T7 ON T6.ITMREF_0 = T7.ITMREF_0
	LEFT JOIN ITMCOST T8 ON T6.ITMREF_0 = T8.ITMREF_0
