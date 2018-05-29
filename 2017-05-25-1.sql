SELECT A.STOFCY_0,
		A.SDHNUM_0,
		A.CREDAT_0,
		A.SDDLIN_0,
		A.BPCORD_0,
		C.BPDNAM_0,
		A.ITMREF_0,
		A.ITMDES1_0,
		A.QTY_0-A.RTNQTY_0 发货数,
		CASE WHEN B.QTY_0 IS NULL THEN 0 ELSE B.QTY_0 END AS 已开票数,A.CPRPRI_0 成本价,
		A.CPRPRI_0 * (A.QTY_0-A.RTNQTY_0 - CASE WHEN B.QTY_0 IS NULL THEN 0 ELSE B.QTY_0 END) 未开票金额   
FROM SDELIVERYD A 
	LEFT JOIN (SELECT SDHNUM_0,SDDLIN_0,SUM(QTY_0) QTY_0 FROM SINVOICED  WHERE INVDAT_0<'2017-02-01'  GROUP BY SDHNUM_0,SDDLIN_0 ) B ON A.SDHNUM_0=B.SDHNUM_0 AND A.SDDLIN_0= B.SDDLIN_0  --AND A.QTY_0-A.RTNQTY_0-B.QTY_0>0
	INNER JOIN SDELIVERY C ON A.SDHNUM_0 = C.SDHNUM_0
WHERE A.SHIDAT_0<'2017-02-01'  
	AND A.STOFCY_0='0101' 
	AND A.QTY_0-A.RTNQTY_0 > CASE WHEN B.QTY_0 IS NULL THEN 0 ELSE B.QTY_0 END