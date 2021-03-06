
---- SELECT * FROM BOM WHERE ITMREF_0 IN (SELECT CPNITMREF_0 FROM BOMD WHERE ITMREF_0 = 'APH1071')
---- SELECT * FROM BOMD
---- SELECT * FROM BOMD WHERE ITMREF_0 = 'IVT6805-LL001'
---- SELECT * FROM ITMMASTER
---- IN (SELECT ITMREF_0 FROM ITMMASTER WHERE TCLCOD_0 = 'CP')
---- SELECT REOCOD_0,* FROM ITMFACILIT
-- 				--CASE REOCOD_0 
--					--WHEN 1 THEN '无建议' 
--					--WHEN 2 THEN '采购' 
--					--WHEN 3 THEN '生产' 
--					--WHEN 4 THEN '地点间' 
--					--WHEN 5 THEN '外协' 
--					--ELSE '未知' 
--					--END
---- SELECT * FROM ROUTING
---- SELECT SUM(OPETIM_0) FROM ROUOPE WHERE ITMREF_0 = 'ICD0064-05'
---- SELECT * FROM ROUOPE WHERE ITMREF_0 = 'ICD0064-05'
---- SELECT  FROM ROUOPESTD


--WITH 
--ABOM AS 
--(
--	SELECT	BOMD.ITMREF_0,
--			LEL = 1,
--			(SELECT ITMDES1_0 FROM ITMMASTER WHERE ITMREF_0 = BOMD.ITMREF_0) AS N'产品名称',
--			CPNITMREF_0,
--			(SELECT ITMDES1_0 FROM ITMMASTER WHERE ITMREF_0 = BOMD.CPNITMREF_0) AS N'组件名称',
--			(SELECT  				
--				CASE REOCOD_0 
--					WHEN 1 THEN N'无建议' 
--					WHEN 2 THEN N'采购' 
--					WHEN 3 THEN N'生产' 
--					WHEN 4 THEN N'地点间' 
--					WHEN 5 THEN N'外协' 
--					ELSE N'未知' 
--					END
--			FROM ITMFACILIT 
--			WHERE ITMREF_0 = BOMD.CPNITMREF_0 AND STOFCY_0 = '0203' ) AS N'属性',
--			BOMQTY_0,
--			PX = CAST(BOMSEQ_0 AS varbinary)
--			--,ITF.REOCOD_0 
--	FROM BOMD
--	WHERE BOMD.ITMREF_0 = N'ISM3669-00' 
--	UNION ALL
--	SELECT	T1.ITMREF_0,
--			LEL + 1,
--			(SELECT ITMDES1_0 FROM ITMMASTER WHERE ITMREF_0 = T1.ITMREF_0) AS N'产品名称',
--			T1.CPNITMREF_0,
--			(SELECT ITMDES1_0 FROM ITMMASTER WHERE ITMREF_0 = T1.CPNITMREF_0) AS N'组件名称',
--			(SELECT  				
--				CASE REOCOD_0 
--					WHEN 1 THEN N'无建议' 
--					WHEN 2 THEN N'采购' 
--					WHEN 3 THEN N'生产' 
--					WHEN 4 THEN N'地点间' 
--					WHEN 5 THEN N'外协' 
--					ELSE N'未知' 
--					END
--			FROM ITMFACILIT
--			WHERE ITMREF_0 = T1.CPNITMREF_0 AND STOFCY_0 = N'0203' )   AS N'属性',
--			T1.BOMQTY_0,
--			CAST(PX + CAST(BOMSEQ_0 AS varbinary) AS varbinary)
--	FROM BOMD T1
--		JOIN ABOM AS T2 ON T1.ITMREF_0 = T2.CPNITMREF_0 AND T2.属性=N'生产'
--),
--ABOM1 AS
--(
--	SELECT ITMREF_0,SUM(OPETIM_0) ST FROM ROUOPE GROUP BY ITMREF_0 	

--)	
--SELECT * FROM ABOM A1 LEFT JOIN ABOM1 A2 ON A1.CPNITMREF_0 = A2.ITMREF_0 
--ORDER BY A1.PX


----SELECT * FROM BOMD WHERE ITMREF_0='IVS0008-05'
----SELECT REOCOD_0,* FROM ITMFACILIT WHERE  ITMREF_0='IVS0008-05'


----SELECT * FROM APLSTD WHERE LANCHP_0 = 250 AND LAN_0 = 'CHI'


----SELECT T2.LANMES_0 FROM ITMFACILIT T1 LEFT JOIN APLSTD T2 ON T1.REOCOD_0 = LANNUM_0 AND LANCHP_0 = 250 AND LAN_0 = N'C

--SELECT * FROM BOMD WHERE ITMREF_0 = 'ISM3669'

--DELETE FROM BOMD WHERE ITMREF_0 = 'ISM3669' AND CPNITMREF_0 = 'IAA8662'



WITH 
ABOM AS 
(
	SELECT	BOMD.ITMREF_0,
			LEL = 1,
			(SELECT ITMDES1_0 FROM ITMMASTER WHERE ITMREF_0 = BOMD.ITMREF_0) ITMDES1_0,
			(SELECT STU_0 FROM ITMMASTER WHERE ITMREF_0 = BOMD.ITMREF_0) STU_0,
			CPNITMREF_0,
			(SELECT ITMDES1_0 FROM ITMMASTER WHERE ITMREF_0 = BOMD.CPNITMREF_0) ITMDES1_0,
			(SELECT B2.LANMES_0 FROM ITMFACILIT B1, APLSTD B2 WHERE B1.ITMREF_0 = BOMD.CPNITMREF_0 AND B1.STOFCY_0 = N'0203' AND B1.REOCOD_0 = B2.LANNUM_0 AND B2.LANCHP_0 = 250 AND B2.LAN_0 = N'CHI' ) REOCOD_0,
			BOMQTY_0,
			PX = CAST(BOMSEQ_0 AS varbinary)
			--,ITF.REOCOD_0 
	FROM BOMD
	WHERE BOMD.ITMREF_0 = N'ISM3669-00' 
	UNION ALL
	SELECT	T1.ITMREF_0,
			LEL + 1,
			(SELECT ITMDES1_0 FROM ITMMASTER WHERE ITMREF_0 = T1.ITMREF_0),
			(SELECT STU_0 FROM ITMMASTER WHERE ITMREF_0 = T1.CPNITMREF_0),
			T1.CPNITMREF_0,
			(SELECT ITMDES1_0 FROM ITMMASTER WHERE ITMREF_0 = T1.CPNITMREF_0),
			(SELECT B2.LANMES_0 FROM ITMFACILIT B1,APLSTD B2 WHERE B1.ITMREF_0 = T1.CPNITMREF_0 AND B1.STOFCY_0 = N'0203' AND B1.REOCOD_0 = B2.LANNUM_0 AND B2.LANCHP_0 = 250 AND B2.LAN_0 = N'CHI' ),
			T1.BOMQTY_0,
			CAST(PX + CAST(BOMSEQ_0 AS varbinary) AS varbinary)
	FROM BOMD T1
		JOIN ABOM AS T2 ON T1.ITMREF_0 = T2.CPNITMREF_0 AND T2.REOCOD_0=N'生产'
),
ABOM1 AS
(
	SELECT ITMREF_0,SUM(OPETIM_0) ST FROM ROUOPE GROUP BY ITMREF_0 	

)	
SELECT A1.ITMREF_0 N'母件代码',
		A1.LEL N'层级',
		A1.ITMDES1_0 N'母件名称',
		A1.STU_0 N'单位',
		A1.CPNITMREF_0 N'组件代码',
		A1.ITMDES1_0 N'组件名称',
		A1.REOCOD_0 N'建议类型',
		A1.BOMQTY_0 N'BOM用量',
		A1.PX,
		A2.ITMREF_0 N'工艺路线',
		A2.ST N'工时'
FROM ABOM A1 LEFT JOIN ABOM1 A2 ON A1.CPNITMREF_0 = A2.ITMREF_0 ORDER BY A1.PX