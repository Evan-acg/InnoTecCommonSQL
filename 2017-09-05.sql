SELECT * FROM ORDERS WHERE ORIFCY_0 = '0202' AND ITMREF_0 = 'IGB0002-16'
SELECT * FROM BPCUSTOMER
SELECT BPCNUM_0 FROM BPCUSTOMER WHERE BPCNUM_0 = N'CHN-AH-4410'

SELECT REPNUM_0 FROM SALESREP

SELECT ITMREF_0 FROM ITMMASTER WHERE ITMREF_0 IN (N'AMB0037',N'AMB0501')

SELECT * FROM ITMFACILIT WHERE ITMREF_0 IN(N'AMB0037',N'AMB0501')
SELECT * FROM SORDERP T1 WHERE T1.SOHNUM_0 = '0101SOH17070598' AND T1.ITMREF_0 = 'MCS6609'
SELECT SUM(T1.DLVQTY_0 * T2.GROPRI_0 * (1-T2.DISCRGVAL2_0))
FROM SORDERQ T1
	LEFT JOIN SORDERP T2 ON T1.SOHNUM_0 = T2.SOHNUM_0 AND T1.SOPLIN_0 = T2.SOPLIN_0
WHERE T1.SOHNUM_0 = '0101SOH17070598' --AND T1.ITMREF_0 = 'MCS6609'
GROUP BY T1.SOHNUM_0

SELECT * FROM SINVOICED WHERE SOHNUM_0 = '0101SOH17070598' AND ITMREF_0 = 'MCS6609'

SELECT * FROM PREQUISD WHERE ITMREF_0 = 'IGB0002-16'

