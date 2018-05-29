SELECT A.MFGNUM_0 AS 工单号,
		A.MFGFCY_0 AS 地点,
		A.ITMREF_0 AS 物料号,
		A.RETQTY_0 AS 需求用量,
		A.USEQTY_0 AS 已消耗量,
		B.CPLQTY_0 AS 总成完工数量,
		(A.RETQTY_0/B.EXTQTY_0) AS BOM单位用量,
		(A.USEQTY_0 - B.CPLQTY_0 * (A.RETQTY_0/B.EXTQTY_0)) AS 未消耗数量
 FROM MFGMAT A,MFGITM B 
WHERE A.USEQTY_0 <> 0 
		AND A.MATSTA_0 <> 4 
		AND A.MFGNUM_0 = B.MFGNUM_0 
		AND B.MFGLIN_0 = 1000 
		AND A.MFGSTA_0 <> 4
		AND (B.CPLQTY_0 * (A.RETQTY_0/B.EXTQTY_0) - A.USEQTY_0) <> 0