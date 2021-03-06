SELECT * FROM ZTSDELIVERYD WHERE SDNNUM_0 = '0101SDN17080014'

SELECT * FROM BPCUSTOMER WHERE BPCNAM_0 LIKE N'%隆机%'

SELECT COUNT(BPCNUM_0) FROM BPCUSTOMER WHERE BPCNAM_0 LIKE N'胜隆' GROUP BY BPCNUM_0
SELECT BPCNUM_0 FROM BPCUSTOMER WHERE BPCNAM_0 LIKE N'%胜隆%'
SELECT T2.BPDNAM_0 N'客户名称', T1.ITMREF_0 N'产品编码', T1.ITMDES1_0 N '产品名称', T1.SDHNUM_0 N '发货单号', T1.QTY_0 N '发货数量', T1.GROPRI_0 N '单价', T1.QTY_0 * T1.GROPRI_0 N'合计', T1.CREDAT_0 N '发货日期' FROM SDELIVERYD T1   LEFT JOIN SDELIVERY T2 ON T1.SDHNUM_0 = T2.SDHNUM_0 WHERE T1.BPCORD_0 = 'CHN-AH-4770'     AND T1.CREDAT_0 BETWEEN '2017/8/1' AND '2017/8/23'



SELECT T2.BPDNAM_0 N'客户名称',
		T1.ITMREF_0 N'产品编码',
		T1.ITMDES1_0 N'产品名称',
		T1.SDHNUM_0 N'发货单号',
		T1.QTY_0 N'发货数量',
		T1.GROPRI_0 N'单价',
		T1.QTY_0 * T1.GROPRI_0 N'合计',
		T1.CREDAT_0 N'发货日期'
FROM SDELIVERYD T1
	LEFT JOIN SDELIVERY T2 ON T1.SDHNUM_0 = T2.SDHNUM_0
WHERE T1.BPCORD_0 = 'CHN-AH-4770'
	AND T1.CREDAT_0 BETWEEN '2017-06-01' AND '2017-08-23'

	SELECT T1.ITMREF_0 N'物料编码', T3.ITMDES1_0  N'物料名称',  T1.EXTQTY_0  N'成品工单数量',   T1.CPLQTY_0 N'已经完工数量',    T2.MFGNUM_0 N'工单号',  T2.ITMREF_0 N'组件',    T2.RETQTY_0 N'需求',    T2.USEQTY_0 N'已消耗',  T1.STRDAT_0 N'开始日期' FROM MFGITM T1 LEFT JOIN MFGMAT T2 ON T1.MFGNUM_0 = T2.MFGNUM_0 AND T1.MFGLIN_0 = '1000' LEFT JOIN ITMMASTER T3 ON T1.ITMREF_0 = T3.ITMREF_0 WHERE T1.MFGFCY_0 = '0201' AND T1.MFGSTA_0 <> 4 AND T1.ITMSTA_0 < 3 AND T1.ITMREF_0 IN(N'ICD0062',N'ICD0067',N'ICD0067-02',N'ICD0067-03',N'ICD0067-09',N'ICD0067-11',N'ICD0067-300',N'ICD0068',N'ICD0068-02',N'ICD0068-03',N'ICD0068-09',N'ICD0068-10',N'ICD0068-11',N'ICD0068-300') ORDER BY T1.STRDAT_0
