SELECT * FROM (SELECT ITMREF_0,QTYSTU_0 FROM STOCK WHERE STOFCY_0 = '0101') T1
	LEFT JOIN(SELECT ITMREF_0,QTYSTU_0 QTY_0 FROM STOJOU WHERE CREDAT_0 = '2017-06-01'AND STOFCY_0 = '0101') T2 ON T1.ITMREF_0 = T2.ITMREF_0


