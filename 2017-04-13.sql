-- SELECT * FROM SINVOICED
-- SELECT * FROM SINVOICE


SELECT T1.CREDAT_0,
		T1.LINTYP_0
FROM SINVOICED T1


STOCKITMMASTERITMFACILITSTOLOTITMCATEGSELECT * FROM STOCK WHERE LOT_0 = N'LO170402030553'SELECT * FROM STOLOTSELECT * FROM STOQLYD WHERE LOT_0 = 'LO170402030553'SELECT * FROM STOQLYHSELECT * FROM STOJOU WHERE LOT_0 = N'LO170402030553'SELECT LINSTA_0,* FROM YMFGRQL WHERE ITMREF_0 = 'ICN0078' AND RETQTY_0 <> USEQTY_0SELECT (SELECT SUM(RETQTY_0) FROM YMFGRQD WHERE ITMREF_0 = 'ICN0078'),(SELECT SUM(QTYSTU_0) FROM XMFGRQD WHERE ITMREF_0 = 'ICN0078'),(SELECT SUM(RETQTY_0) FROM YMFGRQD WHERE ITMREF_0 = 'ICN0078')-(SELECT SUM(QTYSTU_0) FROM XMFGRQD WHERE ITMREF_0 = 'ICN0078')SELECT * FROM XMFGRQDSELECT * FROM YMFGRQDSELECT * FROM MFGMATSELECT	T1.ITMREF_0 AS N'物料代码',		T2.SS AS N'申请数量',		T3.SS AS N'移仓数量',		T2.SS - T3.SS  AS N'差额'FROM (SELECT ITMREF_0 FROM YMFGRQD UNION SELECT ITMREF_0 FROM XMFGRQD) T1	LEFT JOIN (SELECT ITMREF_0,SUM(RETQTY_0) AS SS FROM YMFGRQD GROUP BY ITMREF_0) T2 ON T1.ITMREF_0 = T2.ITMREF_0	LEFT JOIN (SELECT ITMREF_0,SUM(QTYSTU_0) AS SS FROM XMFGRQD GROUP BY ITMREF_0) T3 ON T1.ITMREF_0 = T3.ITMREF_0WHERE T2.SS <> T3.SS AND T1.ITMREF_0 LIKE 'ICN%'SELECT TOP 100 * FROM XMFGRQDSELECT VCRNUM_0, FROM YMFGRQD 