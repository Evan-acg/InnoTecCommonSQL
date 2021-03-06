-- SELECT TOP 100 * FROM SDELIVERYD
-- SELECT TOP 100 * FROM SDELIVERY


SELECT T1.CREDAT_0 AS N'制单日期',
		(CASE T2.CFMFLG_0 WHEN N'2' THEN N'Y' ELSE N'N' END) AS N'已审核',
		T1.SDHNUM_0 AS N'发货单号',
		T1.SOHNUM_0 AS N'销售订单号',
		T3.BPCNAM_0 AS N'客户名称',
		T1.ITMREF_0 AS N'产品代码',
		T1.ITMDES_0 AS N'产品名称',
		T5.QTY_0 AS N'订单数量',
		T1.QTY_0 AS N'已发货数量',
		(T5.QTY_0 - T1.QTY_0) AS N'未发货数量',
		(CASE T6.CUR_0 WHEN N'CNY' THEN T4.GROPRI_0 / 1.17 ELSE T4.GROPRI_0 END) AS N'含税单价',
		(CASE T6.CUR_0 WHEN N'CNY' THEN T4.GROPRI_0 * T1.QTY_0 / 1.17 ELSE T4.GROPRI_0 * T1.QTY_0 END) AS N'发货金额',
		T1.STU_0 AS N'单位',
		T6.CUR_0 AS N'币种',
		T5.ZRMK_0 AS N'备注',
		(CASE T1.REP1_0 WHEN N'D003' THEN N'甘甜' END) AS N'业务员'
FROM SDELIVERYD T1
	LEFT JOIN SDELIVERY T2 ON T1.SDHNUM_0 = T2.SDHNUM_0
	LEFT JOIN BPCUSTOMER T3 ON T1.BPCORD_0 = T3.BPCNUM_0
	LEFT JOIN SORDERP T4 ON T1.SOHNUM_0 = T4.SOHNUM_0 AND T1.SOPLIN_0 = T4.SOPLIN_0
	LEFT JOIN SORDERQ T5 ON T1.SOHNUM_0 = T5.SOHNUM_0 AND T1.SOPLIN_0 = T5.SOPLIN_0
	LEFT JOIN SORDER T6 ON T1.SOHNUM_0 = T6.SOHNUM_0
WHERE T1.REP1_0 = N'D003' OR T1.CREUSR_0 = N'0031'
ORDER BY T1.SDHNUM_0