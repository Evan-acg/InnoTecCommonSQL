--SELECT MTOQTY_0,* FROM ORDERS WHERE ITMREF_0 = N'IHQ0210' AND VCRNUM_0 = N'0202SOH17120115'
--UPDATE ORDERS SET MTOQTY_0 = 0 WHERE ITMREF_0 = N'IHQ0210' AND VCRNUM_0 = N'0202SOH17120115'

--SELECT * FROM AFCTPRF
--SELECT T1.PRFCOD_0,
--		T1.FNC_0,
--		T1.FCYGRU_0,
--		T1.OPT_0
--FROM (SELECT * FROM AFCTPRF WHERE PRFCOD_0 = N'YSALA') T1
--	LEFT JOIN (SELECT * FROM AFCTPRF WHERE PRFCOD_0 = N'YSALB') T2 ON T1.FNC_0 = T2.FNC_0
--WHERE T1.FCYGRUCOD_0 <> T2.FCYGRUCOD_0
--	AND T1.FCYGRU_0 <> N''

SELECT T1.PRFCOD_0,
		T1.FNC_0,
		COUNT(T1.FNC_0)
FROM AFCTPRF T1
WHERE T1.PRFCOD_0 = N'YSALA'
GROUP BY T1.PRFCOD_0,T1.FNC_0
HAVING COUNT(T1.FNC_0) = 2


SELECT * 
FROM (SELECT * FROM AFCTPRF WHERE PRFCOD_0 = N'YSALA') T1
	RIGHT JOIN (SELECT * FROM AFCTPRF WHERE PRFCOD_0 = N'YSALB') T2 ON T1.FNC_0 = T2.FNC_0 
																		AND T1.FCYGRUCOD_0 = T2.FCYGRUCOD_0
WHERE T1.OPT_0 <> T2.OPT_0



SELECT * FROM SORDERQ WHERE SOHNUM_0 = N'0101SOH17030072'

SELECT * FROM SDELIVERYD WHERE SDHNUM_0 = N'0101SDH17110191'



