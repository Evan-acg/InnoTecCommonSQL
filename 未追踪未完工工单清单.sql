SELECT MFGNUM_0 N'工单号',
		ITMREF_0 N'产品名称',
		EXTQTY_0 N'计划数量',
		CPLQTY_0 N'完成数量'
FROM MFGITM
WHERE MFGNUM_0 NOT IN(SELECT MFGNUM_0 FROM MFGMATTRK WHERE MFGFCY_0 = '0201' GROUP BY MFGNUM_0)
	AND MFGFCY_0 = '0201'
	AND MFGSTA_0 <> '4'