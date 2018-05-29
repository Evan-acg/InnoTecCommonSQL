SELECT A.CPY_0,
		A.FCY_0,
		A.JOU_0,
		A.TYP_0,
		A.CUR_0,
		A.ACCDAT_0,
		A.NUM_0,
		A.REF_0, 
		A.BPRVCR_0,
		B.DES_0 AS ZY,
		B.ACC_0,
		C.DES_0 AS ACCDES,
		B.SNS_0,
		B.AMTCUR_0,
		B.AMTLED_0 AS AMTLOC_0,
		B.BPR_0,
		B.BPR_0,
		D.BPRNAM_0,
		E.FIYNUM_0 AS FIY_0,
		A.PER_0,
		B.STT1_0 
FROM GACCENTRY A,
		GTYPACCENT GTE,
		GACCOUNT C,
		FISCALYEAR E,
		GACCENTRYD B 
	LEFT JOIN BPARTNER D ON (B.BPR_0=D.BPRNUM_0)
WHERE A.TYP_0=GTE.TYP_0 
	AND (GTE.PER_0=1 AND GTE.VCRREA_0=2) 
	AND B.LEDTYP_0=1 
	AND E.LEDTYP_0=1 
	AND B.COA_0=C.COA_0 
	AND A.FIY_0=E.FIYNUM_0 
	AND A.CPY_0=E.CPY_0 
	AND A.NUM_0=B.NUM_0 
	AND B.ACC_0=C.ACC_0 
	AND A.TYP_0=B.TYP_0 
	AND A.CPY_0='01' 
	AND B.ACC_0 LIKE '112201%'  
ORDER BY A.ACCDAT_0,A.NUM_0