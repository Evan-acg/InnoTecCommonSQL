--SELECT * FROM SMVTD
--SELECT * FROM SMVTH
--SELECT * FROM ITMCOST WHERE ITMREF_0 = 'IHJ0035-01'
--SELECT * FROM YREQH
--SELECT * FROM YREQD

SELECT T2.STOFCY_0,
		T1.ITMREF_0,
		T1.ITMDES1_0,
		T1.QTYSTU_0,
		T3.MATCST_0,
		T1.QTYSTU_0 * T3.MATCST_0
FROM SMVTD T1
	LEFT JOIN SMVTH T2 ON T1.VCRNUM_0 = T2.VCRNUM_0
	LEFT JOIN ITMCOST T3 ON T2.STOFCY_0 = T3.STOFCY_0 AND T1.ITMREF_0 = T3.ITMREF_0
WHERE T2.CREDAT_0 BETWEEN '2017/05/01' AND '2017/05/31' AND TRSFAM_0 = 'C02'

SELECT T1.STOFCY_0,
		T1.ITMREF_0,
		T3.ITMDES1_0,
		T1.LOC_0,
		T1.STA_0,
		T1.QTYSTU_0,
		T2.MATCST_0,
		T1.VARVAL_0 
FROM STOJOU T1
	LEFT JOIN ITMCOST T2 ON T1.STOFCY_0 = T2.STOFCY_0 AND T1.ITMREF_0 = T2.ITMREF_0 AND FIYNUM_0 = '2'
	LEFT JOIN ITMMASTER T3 ON T1.ITMREF_0 = T3.ITMREF_0
WHERE T1.IPTDAT_0 BETWEEN '2017/05/01' AND '2017/05/31'
	AND T1.TRSTYP_0 IN('1','2')
	AND T1.STOFCY_0 <> '0101'
	AND T1.CREUSR_0 IN('ALAN','ADMIN')

SELECT * FROM STOJOU WHERE VCRNUM_0 = '0201ISS17050020'

SELECT * FROM STOJOU WHERE ITMREF_0 = 'IZT9001' AND STOFCY_0 = '0203' AND QTYSTU_0 = 6