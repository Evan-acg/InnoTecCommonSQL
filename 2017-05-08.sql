


SELECT A.ITMREF_0,
		A.ITMDES1_0,
		A.SDHNUM_0,
		A.SDDLIN_0, 
		B.QTYSTU_0*(-1),
		B.VARVAL_0*(-1),
		B.LOT_0,
		SUBSTRING(B.LOT_0,7,4) AS YFCY 
FROM (SELECT?A.STOFCY_0,
				A.SDHNUM_0,
				A.SDDLIN_0,
				A.BPCORD_0,
				C.BPDNAM_0,
				A.ITMREF_0,
				A.ITMDES1_0,
				A.QTY_0-A.RTNQTY_0 AS QYT_0 ,
				ISNULL(B.QTY_0,0)AS?YKP,
				A.CPRPRI_0,
				(A.CPRPRI_0?*?(A.QTY_0-A.RTNQTY_0?-?ISNULL(B.QTY_0,0)))?NKP
		FROM?SDELIVERYD?A?
			LEFT?JOIN?(SELECT?SDHNUM_0,SDDLIN_0,SUM(QTY_0)QTY_0 FROM?SINVOICED??WHERE?INVDAT_0 <= N'2017-03-28'??GROUP?BY?SDHNUM_0,SDDLIN_0?)?B?ON?A.SDHNUM_0=B.SDHNUM_0?AND?A.SDDLIN_0=?B.SDDLIN_0?
			INNER?JOIN?SDELIVERY?C?ON?A.SDHNUM_0?=?C.SDHNUM_0
		WHERE?A.SHIDAT_0<= N'2017-03-28'??AND?A.STOFCY_0='0101'?
			AND?A.QTY_0-A.RTNQTY_0?>?ISNULL(B.QTY_0,0)) A
	INNER JOIN STOJOU B ON A.SDHNUM_0=B.VCRNUM_0 AND A.SDDLIN_0=B.VCRLIN_0
WHERE A.YKP=0  
	AND SUBSTRING(B.LOT_0,7,2)='02'
