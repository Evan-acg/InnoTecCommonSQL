--订单号
--供应商编码
--供应商名称
--订单日期
--产品代码
--产品名称
--单位
--订单数量
--收货数量
--在定量
--发票数量
--无税单价
--含税单价
--含税金额
--预计收货日期
--发票状态
--制单人

--SELECT * FROM PORDERQ 
--SELECT * FROM PORDERP
--SELECT * FROM PORDER
--SELECT * FROM SINVOICED
--SELECT * FROM PRECEIPTD
--SELECT * FROM PINVOICED

SELECT T1.POHNUM_0 N'订单号',
		T1.BPSNUM_0 N'供应商编码',
		T3.BPRNAM_0 N'供应商名称',
		T1.CREDAT_0 N'订单日期',
		T1.ITMREF_0 N'产品代码',
		T2.ITMDES_0 N'产品名称',
		T1.STU_0 N'单位',
		T1.QTYSTU_0 N'订单数量',
		T5.QTYUOM_0 N'收货数量',
		(CASE WHEN T1.QTYSTU_0 - T5.QTYUOM_0 <0 THEN 0 ELSE T1.QTYSTU_0 - T5.QTYUOM_0 END) N'在定量',
		T6.QTYUOM_0 N'发票数量',
		T2.GROPRI_0 N'无税单价',
		T1.QTYSTU_0 * 1.17 N'含税单价',
		T1.QTYSTU_0 * T2.GROPRI_0 * 1.17 N'含税金额',
		T1.EXTRCPDAT_0 N'预计收货日期',
		T4.NOMUSR_0 N'制单人'
FROM PORDERQ T1
	LEFT JOIN PORDERP T2 ON T1.POHNUM_0 = T2.POHNUM_0 AND T1.POPLIN_0 = T2.POPLIN_0
	LEFT JOIN PORDER T3 ON T1.POHNUM_0 = T3.POHNUM_0
	LEFT JOIN AUTILIS T4 ON T1.CREUSR_0 = T4.USR_0
	LEFT JOIN (SELECT POHNUM_0,POPLIN_0,SUM(QTYUOM_0) QTYUOM_0 FROM PRECEIPTD GROUP BY POHNUM_0,POPLIN_0) T5 ON T1.POHNUM_0 = T5.POHNUM_0 AND T1.POPLIN_0 = T5.POPLIN_0
	LEFT JOIN (SELECT POHNUM_0,POPLIN_0,SUM(QTYUOM_0) QTYUOM_0 FROM PINVOICED GROUP BY POHNUM_0,POPLIN_0) T6 ON T1.POHNUM_0 = T6.POHNUM_0 AND T1.POPLIN_0 = T6.POPLIN_0
WHERE T1.POHFCY_0 = N'0203'
ORDER BY T1.POHNUM_0










