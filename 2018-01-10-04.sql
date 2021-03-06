SELECT * FROM SORDERQ WHERE ITMREF_0 = N'MCT6531' AND SOHNUM_0 = N'0201SOH17120030'
SELECT * FROM PORDERQ WHERE ITMREF_0 = N'MCT6531' AND POHNUM_0 = N'0101POH17120079'
SELECT * FROM PORDERQ WHERE POHNUM_0 = N'0101POH17120298'
SELECT * FROM SORDERQ WHERE SOHNUM_0 = N'0201SOH17120112'

SELECT TOP 100 * FROM APLSTD

SELECT TOP 100 T1.ITMREF_0 N'产品编码',
		T2.ITMDES1_0 N'产品名称',
		T3.LANMES_0 N'建议类型',
		ISNULL(T4.QTY_0,0) N'当前库存',
		ISNULL(T5.QTY_0,0) N'A状态',
		ISNULL(T6.QTY_0,0) N'Q状态',
		ISNULL(T7.QTY_0,0) N'R状态',
		ISNULL(T8.QTY_0,0) N'工单在途',
		ISNULL(T9.QTY_0,0) N'采购在途',
		ISNULL(T10.QTY_0,0) N'订单需求',
		ISNULL(T11.QTY_0,0) N'工单需求'
FROM ITMFACILIT T1
	LEFT JOIN ITMMASTER T2 ON T1.ITMREF_0 = T2.ITMREF_0
	LEFT JOIN APLSTD T3 ON T1.REOCOD_0 = T3.LANNUM_0 AND LANCHP_0 = N'250' AND LAN_0 = N'CHI'
	LEFT JOIN (SELECT ITMREF_0,STOFCY_0,SUM(QTYSTU_0) QTY_0 FROM STOCK GROUP BY ITMREF_0,STOFCY_0)T4 ON T1.ITMREF_0 = T4.ITMREF_0 AND T4.STOFCY_0 = N'0201'
	LEFT JOIN (SELECT ITMREF_0,STOFCY_0,SUM(QTYSTU_0) QTY_0 FROM STOCK WHERE STA_0 LIKE N'A%' GROUP BY ITMREF_0,STOFCY_0)T5 ON T1.ITMREF_0 = T5.ITMREF_0 AND T5.STOFCY_0 = N'0201'
	LEFT JOIN (SELECT ITMREF_0,STOFCY_0,SUM(QTYSTU_0) QTY_0 FROM STOCK WHERE STA_0 LIKE N'Q%' GROUP BY ITMREF_0,STOFCY_0)T6 ON T1.ITMREF_0 = T6.ITMREF_0 AND T6.STOFCY_0 = N'0201'
	LEFT JOIN (SELECT ITMREF_0,STOFCY_0,SUM(QTYSTU_0) QTY_0 FROM STOCK WHERE STA_0 LIKE N'R%' GROUP BY ITMREF_0,STOFCY_0)T7 ON T1.ITMREF_0 = T7.ITMREF_0 AND T7.STOFCY_0 = N'0201'
	LEFT JOIN (SELECT ITMREF_0,MFGFCY_0,SUM(EXTQTY_0 - CPLQTY_0) QTY_0 FROM MFGITM WHERE MFGSTA_0 IN(N'1') GROUP BY ITMREF_0,MFGFCY_0) T8 ON T1.ITMREF_0 = T8.ITMREF_0 AND T8.MFGFCY_0 = N'0201'
	LEFT JOIN (SELECT ITMREF_0,PRHFCY_0,SUM(QTYSTU_0 - RCPQTYSTU_0) QTY_0 FROM PORDERQ WHERE LINCLEFLG_0 = 1 GROUP BY ITMREF_0,PRHFCY_0) T9 ON T1.ITMREF_0 = T9.ITMREF_0 AND T9.PRHFCY_0 = N'0201'
	LEFT JOIN (SELECT ITMREF_0,SALFCY_0,SUM(QTY_0 - DLVQTY_0) QTY_0 FROM SORDERQ WHERE DEMSTA_0 <> 4 GROUP BY ITMREF_0,SALFCY_0) T10 ON T1.ITMREF_0 = T10.ITMREF_0 AND T10.SALFCY_0 = N'0201'
	LEFT JOIN (SELECT ITMREF_0,MFGFCY_0,SUM(RETQTY_0 - USEQTY_0) QTY_0 FROM MFGMAT WHERE MFGSTA_0 <> 4 GROUP BY ITMREF_0,MFGFCY_0) T11 ON T1.ITMREF_0 = T11.ITMREF_0 AND T11.MFGFCY_0 = N'0201'








