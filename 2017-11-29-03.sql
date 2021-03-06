WITH ABOM AS 
	(SELECT BOMD.ITMREF_0,LEL = 1,
	(SELECT ITMDES1_0 FROM ITMMASTER WHERE ITMREF_0 = BOMD.ITMREF_0) ITMDES1_0,
	(SELECT STU_0 FROM ITMMASTER WHERE ITMREF_0 = BOMD.ITMREF_0) STU_0,
	CPNITMREF_0,
	(SELECT ITMDES1_0 FROM ITMMASTER WHERE ITMREF_0 = BOMD.CPNITMREF_0) ITMDES1_1, 
	(SELECT B2.LANMES_0 FROM ITMFACILIT B1,APLSTD B2 WHERE B1.ITMREF_0 = BOMD.CPNITMREF_0 AND B1.STOFCY_0 = N'0203' AND B1.REOCOD_0 = B2.LANNUM_0 AND B2.LANCHP_0 = 250 AND B2.LAN_0 = N'CHI' ) REOCOD_0, 
	BOMSTUCOE_0,
	BOMQTY_0,
	PX = CAST(BOMSEQ_0 AS varbinary) 
FROM BOMD 
WHERE BOMD.ITMREF_0 = N'IVB1048-GW' 
UNION ALL 
SELECT    T1.ITMREF_0,
			LEL + 1,
			(SELECT ITMDES1_0 FROM ITMMASTER WHERE ITMREF_0 = T1.ITMREF_0),
			(SELECT STU_0 FROM ITMMASTER WHERE ITMREF_0 = T1.CPNITMREF_0),
			T1.CPNITMREF_0,
			(SELECT ITMDES1_0 FROM ITMMASTER WHERE ITMREF_0 = T1.CPNITMREF_0), 
			(SELECT B2.LANMES_0 FROM ITMFACILIT B1,APLSTD B2 WHERE B1.ITMREF_0 = T1.CPNITMREF_0 AND B1.STOFCY_0 = N'0203' AND B1.REOCOD_0 = B2.LANNUM_0 AND B2.LANCHP_0 = 250 AND B2.LAN_0 = N'CHI' ),
			T1.BOMSTUCOE_0, 
			T1.BOMQTY_0,
			CAST(PX + CAST(BOMSEQ_0 AS varbinary) AS varbinary) 
FROM BOMD T1 
	JOIN ABOM AS T2 ON T1.ITMREF_0 = T2.CPNITMREF_0 AND T2.REOCOD_0=N'生产' AND T1.BOMALTTYP_0 = 2 AND T1.BOMENDDAT_0 = N'1753-01-01'),
ABOM1 AS (SELECT ITMREF_0,SUM(OPETIM_0) ST FROM ROUOPE GROUP BY ITMREF_0) 

SELECT A1.ITMREF_0 N'母件代码',
		A1.LEL N'层级',
		A1.ITMDES1_0 N'母件名称',
		A1.STU_0 N'单位',
		A1.CPNITMREF_0 N'组件代码',
		A1.ITMDES1_1 N'组件名称',
		A1.REOCOD_0 N'建议类型',
		A1.BOMSTUCOE_0 N'系数',
		A1.BOMQTY_0 N'BOM用量',
		A1.PX,A2.ITMREF_0 N'工艺路线',
		A2.ST N'组件工时' 
FROM ABOM A1 
	LEFT JOIN ABOM1 A2 ON A1.CPNITMREF_0 = A2.ITMREF_0 
ORDER BY A1.PX




	--SELECT TOP 100 * FROM BOMD WHERE ITMREF_0 = N'IVB1048-GW'
	--SELECT TOP 1 T2.LANMES_0 FROM ROUOPE T1 LEFT JOIN APLSTD T2 ON T2.LANCHP_0 = '303' AND T2.LAN_0 = 'CHI' AND T1.TIMCOD_0 = T2.LANNUM_0 WHERE T1.ITMREF_0 = N'IVB1048-GW'
	--SELECT * FROM 

