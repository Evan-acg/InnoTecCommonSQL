--SELECT * FROM MFGMAT
--SELECT * FROM MFGMATTRK
--SELECT * FROM MFGITM
--SELECT * FROM MFGHEAD
--SELECT * FROM SORDERQ
--SELECT * FROM PORDERQ



SELECT T1.MFGFCY_0 AS N'工单地点',
		T1.MFGNUM_0 AS N'工单号',
		T1.ITMREF_0 AS N'组件',
		T3.ITMDES1_0 AS N'组件名称',
		T1.STU_0 AS N'单位',
		T1.RETQTY_0 AS N'需求数量',
		T1.USEQTY_0 AS N'已发数量',
		(T1.RETQTY_0 - T1.USEQTY_0)  AS N'未发数量',
		T2.ITMREF_0 AS N'工单产品',
		T2.CPLQTY_0 AS N'工单数量',
		T6.SOHNUM_0 AS N'销售单号',
		T6.SOPLIN_0 AS N'销售单行号',
		T6.ITMREF_0 AS N'订单产品',
		T7.BPCNAM_0 AS N'客户名称'
FROM MFGMAT T1
	LEFT JOIN MFGITM T2 ON T1.MFGNUM_0 = T2.MFGNUM_0
	LEFT JOIN ITMMASTER T3 ON T1.ITMREF_0 = T3.ITMREF_0
	LEFT JOIN SORDERQ T4 ON T2.VCRNUMORI_0 = T4.SOHNUM_0 AND T2.VCRLINORI_0 = T4.SOPLIN_0
	LEFT JOIN PORDERQ T5 ON T4.POHNUM_0 = T5.POHNUM_0 AND T4.POPLIN_0 = T5.POPLIN_0
	LEFT JOIN SORDERQ T6 ON T5.SOHNUM_0 = T6.SOHNUM_0 AND T5.SOPLIN_0 = T6.SOPLIN_0
	LEFT JOIN BPCUSTOMER T7 ON T6.BPCORD_0 = T7.BPCNUM_0
ORDER BY T6.SOHNUM_0,T6.SOPLIN_0
