-- SELECT * FROM PREQUIS
-- SELECT * FROM PREQUISD

SELECT T1.PSHNUM_0,
		T1.ITMREF_0,
		T1.ITMDES_0,
		T1.EXTRCPDAT_0,
		T1.QTYSTU_0,
		T1.GROPRI_0,
		T1.BPSNUM_0,
		T2.BPSNAM_0
FROM PREQUISD T1
	LEFT JOIN BPSUPPLIER T2 ON T1.BPSNUM_0 = T2.BPSNUM_0
WHERE T1.PSHFCY_0 = N'0203'