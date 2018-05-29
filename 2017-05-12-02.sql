SELECT  T1.CREDAT_0 N'销售订单日期',
		T1.SOHNUM_0 N'销售订单号',
		T1.BPCORD_0 N'客户编码',
		T3.BPCNAM_0 N'客户名称',
		T1.ITMREF_0 N'产品编码',
		T4.ITMDES_0 N'产品名称',
		T1.QTY_0 N'销售订单数量',
		T5.CREDAT_0 N'发货日期',
		T5.SDHNUM_0 N'发货单号',
		T5.QTY_0 N'发货数量',
		T1.ZRMK_0 N'备注',
		T1.ZCUSNUM_0 N'客户单号',
		T1.DEMDLVDAT_0 N'要求发货日期',
		T6.CFMFLG_0 N'发货审核',
		T7.QTY_0 N'发票数量',
		T4.GROPRI_0 N'无税单价',
		T3.CUR_0 N'币种',
		T4.GROPRI_0 * T1.QTY_0 N'原币未税金额',
		(CASE WHEN T3.CUR_0  = N'CNY' THEN T4.GROPRI_0 * T1.QTY_0 ELSE T4.GROPRI_0 * T1.QTY_0 * T3.CHGRAT_0 END) N'外币未税金额',
		T3.CHGRAT_0 N'汇率',
		T8.BPRNAM_0 N'销售代表',
		T9.NOMUSR_0 N'销售订单创建用户'
FROM SORDERQ T1
	LEFT JOIN SORDER T3 ON T1.SOHNUM_0 = T3.SOHNUM_0
	LEFT JOIN SORDERP T4 ON T1.SOHNUM_0 = T4.SOHNUM_0 AND T1.SOPLIN_0 = T4.SOPLIN_0
	LEFT JOIN SDELIVERYD T5 ON T1.SOHNUM_0 = T5.SOHNUM_0 AND T1.SOPLIN_0 = T5.SOPLIN_0
	LEFT JOIN SDELIVERY T6 ON T5.SDHNUM_0 = T6.SDHNUM_0
	LEFT JOIN SINVOICED T7 ON T5.SDHNUM_0 = T7.SDHNUM_0 AND T5.SDDLIN_0 = T7.SDDLIN_0
	LEFT JOIN BPARTNER T8 ON T3.REP_0 = T8.BPRNUM_0
	LEFT JOIN AUTILIS T9 ON T1.CREUSR_0 = T9.USR_0
WHERE T1.SALFCY_0  = N'0101'
ORDER BY T1.SOHNUM_0,T1.SOPLIN_0