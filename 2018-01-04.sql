SELECT TOP 100 *  FROM PORDER WHERE POHFCY_0 = N'0203'
SELECT *  FROM PREQUISD WHERE PSHFCY_0 = N'0203' AND LINCLEFLG_0 = N'1'

SELECT * FROM PORDERP WHERE WIPNUM_0 = N'WIP02031707374233'

SELECT ITMREF_0,STA_0,SUM(QTYSTU_0) FROM STOCK WHERE STOFCY_0 = N'0201' GROUP BY ITMREF_0,STA_0
SELECT ITMREF_0,LOC_0,SUM(QTYSTU_0) FROM STOJOU WHERE CREDAT_0 BETWEEN N'2017-12-30' AND GETDATE() AND STOFCY_0 = N'0201' AND CREUSR_0 <> N'ADMIN' GROUP BY ITMREF_0,LOC_0
SELECT ITMREF_0,STA_0,LOC_0,SUM(QTYSTU_0) FROM STOCK WHERE STOFCY_0 = N'0201' GROUP BY ITMREF_0,STA_0,LOC_0





SELECT * FROM STOJOU WHERE ITMREF_0 = N'ITB0052' AND CREDAT_0 BETWEEN N'2017-12-30' AND GETDATE() AND CREUSR_0 <> N'ADMIN'

SELECT * FROM STOALL WHERE ITMREF_0 = N'ICT2080'





