--SELECT * FROM PRECEIPTD WHERE ITMREF_0 = 'IAA8001-01'

--SELECT * FROM STOJOU WHERE ITMREF_0 = 'IAA8001-01'

SELECT ITMREF_0 FROM ORDERS
WHERE ORIFCY_0 = '0202'
	AND WIPSTA_0 = '3'
	AND ITMREF_0 IN (SELECT ITMREF_0 FROM PREQUISD WHERE PSHNUM_0 IN('0202REQ17060001','0202REQ17060002') AND EXTORDDAT_0 = '2017-06-30 00:00:00.000')
GROUP BY ITMREF_0

SELECT * FROM PREQUISD WHERE ITMREF_0 = 'IGS0086'
