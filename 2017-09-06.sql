SELECT * FROM ZPORDERH
SELECT * FROM ZPORDERD

INSERT INTO ZPORDERH(POHFCY_0,PURTYP_0,POHNUM_0,CUR_0,BPSNUM_0,BPAADD_0,STOFCY_0,PTE_0,BUY_0,ZREMARK_0,IMPFLG_0,IMPDAT_0,CREDATTIM_0,UPDDATTIM_0,AUUID_0,CREUSR_0,UPDUSR_0) 
VALUES(N'0101',N'1',N'0101POH17090111',N'CNY',N'CHN-SH-4031',N'01',N'0101',N' ',N' ',N' ',N'1',N'2017-09-06',N'2017-09-06',N'2017-09-06',NEWID(),N'0003',N'0003')


INSERT INTO ZPORDERD(ITMREF_0,ITMDES1_0,PUU_0,QTYPUU_0,QTYUOM_0,GROPRI_0,REMARK_0,POHNUM_0,POPLIN_0,POHFCY_0,BPSNUM_0,BPAADD_0,DEMDLVDAT_0,CREDATTIM_0,UPDDATTIM_0,AUUID_0,CREUSR_0,UPDUSR_0)
VALUES(N'IHJ0078',N'��ǹ������ĸ/BZ ʽ/ͭ��ĸ',N'PCS',N'1',N'1',N'1',N' ',N'0101POH17090111',N'1000',N'0101',N'CHN-SH-4031',N'01',N'2017-09-06',N'2017-09-06',N'2017-09-06',NEWID(),N'0003',N'0003')

UPDATE ZPORDERD SET ITMREF_0 = 'IRT0065-02'
UPDATE ZPORDERH SET POHNUM_0 = 'TTT001'
UPDATE ZPORDERD SET POHNUM_0 = 'TTT001'
UPDATE ZPORDERH SET PURTYP_0 = '1'
sp_help ZPORDERH
sp_help ZPORDERD
SELECT * FROM SORDERQ WHERE SOHNUM_0 = '0203SOH17090037'
SELECT * FROM ITMMASTER WHERE ITMREF_0 = 'IHJ0078'
SELECT * FROM ITMBPS WHERE BPSNUM_0 = 'CHN-SH-4031'
SELECT TOP 100 * FROM PORDER

IF EXISTS (SELECT BPSNUM_0 FROM BPSUPPLIER WHERE BPSNUM_0 IN(N'123',N'32123'))
PRINT 1
ELSE
PRINT 2
IF NOT EXISTS (SELECT BPSNUM_0 FROM BPSUPPLIER WHERE (N'123',N'32123',N'CHN-SH-4031') NOT IN BPSNUM_0)

SELECT * FROM (SELECT BPSNUM_0 FROM BPSUPPLIER WHERE BPSNUM_0 IN(N'123',N'32123',N'CHN-SH-4031'))T1 WHERE BPSNUM_0 NOT IN(N'123',N'32123',N'CHN-SH-4031')

CREATE TABLE #TEMP(
	BPSNUM_0 VARCHAR(100)
)
INSERT INTO #TEMP(BPSNUM_0) VALUES(N'123')
INSERT INTO #TEMP(BPSNUM_0) VALUES(N'32123')
INSERT INTO #TEMP(BPSNUM_0) VALUES(N'CHN-SH-4031')
SELECT * FROM #TEMP
SELECT T1.BPSNUM_0 FROM #TEMP T1 LEFT JOIN BPSUPPLIER T2 ON T1.BPSNUM_0 = T2.BPSNUM_0 WHERE T2.BPSNUM_0 IS NULL
DROP TABLE #TEMP

SELECT BPSNUM_0 FROM BPSUPPLIER WHERE exists(SELECT BPSNUM_0 FROM BPSUPPLIER WHERE BPSNUM_0 NOT IN(N'123',N'32123',N'CHN-SH-4031'))

SELECT PTE_0 FROM TABPAYTERM
SELECT * FROM MFGMAT WHERE MFGNUM_0 = '0201MFG17090838' AND ITMREF_0 = 'ITB5057'
UPDATE MFGMAT SET MATSTA_0 = 3 WHERE MFGNUM_0 = '0201MFG17090838' AND ITMREF_0 = 'ITB5057'

SELECT ITMREF_0,STOFCY_0 FROM ITMFACILIT WHERE STOFCY_0 = '0101'

SELECT ITMREF_0,ITMDES1_0,STU_0 FROM ITMMASTER WHERE ITMREF_0 IN(N'IHJ0078')
