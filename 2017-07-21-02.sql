SELECT * FROM SORDERQ
SELECT * FROM SINVOICED
SELECT * FROM PAYMENTH
SELECT * FROM PAYMENTD
SELECT * FROM SDELIVERYD


SELECT TOP 1000
		T1.SOHNUM_0,
		T1.BPCORD_0,
		T1.ITMREF_0,
		T1.ITMDES_0,
		T1.QTY_0,
		T1.QTY_0 * T1.NETPRI_0,
		T2.QTY_0,
		T3.PAYCURLIN_0
FROM SDELIVERYD T1
	LEFT JOIN SINVOICED T2 ON T1.SDHNUM_0 = T2.SDHNUM_0
							AND T1.SDDLIN_0 = T2.SDDLIN_0
	LEFT JOIN PAYMENTD T3 ON T2.NUM_0 = T3.VCRNUM_0
WHERE T1.STOFCY_0 = '0101'
