SELECT ITMREF_0,SUM(USEQTY_0) FROM MFGMATTRK WHERE CREDAT_0 BETWEEN N'2017-12-30' AND GETDATE() AND MFGFCY_0 = N'0201' GROUP BY ITMREF_0

SELECT ITMREF_0,SUM(QTY_0) FROM SDELIVERYD WHERE CREDAT_0 BETWEEN N'2017-12-30' AND GETDATE() AND STOFCY_0 = N'0201' GROUP BY ITMREF_0
SELECT ITMREF_0,SUM(QTYSTU_0) FROM PRECEIPTD WHERE CREDAT_0 BETWEEN N'2017-12-30' AND GETDATE() AND POHFCY_0 = N'0201' GROUP BY ITMREF_0


SELECT ITMREF_0,QTY_0 FROM SDELIVERYD WHERE CREDAT_0 BETWEEN N'2017-12-30' AND GETDATE() AND STOFCY_0 = N'0201'
SELECT ITMREF_0,USEQTY_0 FROM MFGMATTRK WHERE CREDAT_0 BETWEEN N'2017-12-30' AND GETDATE() AND MFGFCY_0 = N'0201'
SELECT ITMREF_0,QTYSTU_0 FROM PRECEIPTD WHERE CREDAT_0 BETWEEN N'2017-12-30' AND GETDATE() AND POHFCY_0 = N'0201'
SELECT TOP 100 * FROM PRECEIPTD

SELECT ITMREF_0 FROM SMVTD WHERE CREDAT_0 BETWEEN N'2017-12-30' AND GETDATE() AND LEFT(VCRNUM_0,4) = N'0201' AND CREUSR_0 = N'ADMIN' GROUP BY ITMREF_0
