SELECT * FROM SORDERQ WHERE FMINUM_0 = '0101POH17090146'
SELECT * FROM SORDERQ WHERE SOHNUM_0 = '0201SOH17090057' AND ITMREF_0 = 'MCH2388'

SELECT * FROM SDELIVERYD WHERE SOHNUM_0 = '0201SOH17090057'

SELECT * FROM ZTSDELIVERYD

SELECT * FROM ZTSDELIVERY



SELECT TOP 100 * FROM ATEXTE WHERE NOMZON_0 =  N'CONSALLA'

SELECT TOP 100 * FROM ATEXTE WHERE TEXTE_0 LIKE N'%����%'
SELECT TOP 100 * FROM ATEXTE WHERE NUMERO_0 = '33677'
SELECT TOP 100 * FROM ATEXTRA WHERE TEXTE_0 LIKE N'%����%'
SELECT TOP 100 * FROM ATEXTRA WHERE CODFIC_0 = N'CONSALLA'
SELECT TOP 100 * FROM APLSTD WHERE LANMES_0 LIKE N'����'
SELECT TOP 100 * FROM APLSTD WHERE LANNUM_0 = '3164'
SELECT TOP 100 * FROM AFONCTION WHERE CODINT_0 = N'CONSCPQ'


SELECT T1.PRFCOD_0,
		T1.FNC_0,
		T1.OPT_0,
		T2.CODACT_0,
		T2.CODINT_0,
		T2.MENU_0,
		T3.TEXTE_0
FROM AFCTPRF T1
	LEFT JOIN AFONCTION T2 ON T1.FNC_0 = T2.CODINT_0
	LEFT JOIN ATEXTE T3 ON T2.NOM_0 = T3.NUMERO_0 AND T3.LAN_0 = N'CHI'
WHERE T1.PRFCOD_0 = N'YSTOA'