﻿SELECT * FROM ZSORDERD WHERE SOHNUM_0 = 'PJ20171019004'
SELECT * FROM ZSORDERH WHERE SOHNUM_0 = 'PJ20171019004'
SELECT * FROM ITMMASTER WHERE ITMREF_0 = N'71034157'

UPDATE T1 SET T1.ITMDES1_0 = T2.ITMDES1_0 FROM ZSORDERD T1 LEFT JOIN  ITMMASTER T2 ON T1.ITMREF_0 = T2.ITMREF_0 AND T1.SOHNUM_0 = 'PJ20171020004' AND T2.ITMDES1_0 IS NOT NULL


SELECT T1.ITMREF_0,T1.ITMDES1_0,T2.ITMDES1_0 FROM ZSORDERD T1 LEFT JOIN ITMMASTER T2 ON T1.ITMREF_0 = T2.ITMREF_0 AND T1.SOHNUM_0 = 'PJ20171020004'

SELECT T1.ITMREF_0,
		T1.ITMDES1_0,
		T2.ITMDES1_0
FROM ZSORDERD T1 
	LEFT JOIN ITMMASTER T2 ON T1.ITMREF_0 = T2.ITMREF_0
WHERE T1.SOHNUM_0 = 'PJ20171020004'

UPDATE T1 SET T1.ITMDES1_0 = T2.ITMDES1_0
FROM ZSORDERD T1
	LEFT JOIN ITMMASTER T2 ON T1.ITMREF_0 = T2.ITMREF_0
WHERE T1.SOHNUM_0 = 'PJ20171020004'

INSERT INTO ZSORDERH(SOHNUM_0,CPY_0,BPCORD_0,BPAADD_0,BPCCRY_0,CHGRAT_0,CUR_0,DEMDLVDAT_0,MDL_0,PTE_0,SALFCY_0,SHIDAT_0,SOHTYP_0,STOFCY_0,VACBPR_0,ZCUSNUM_0,ZCUSNUMLIN_0,IMPFLG_0,REP_0,AUUID_0,CREDATTIM_0,UPDDATTIM_0,CREUSR_0,UPDUSR_0,IMPDAT_0,REP_1) 
			values(N'SYJ20171023001',N'0101',N'CHN-JS-8057',N'01',N'CN',N'1',N'CNY',N'2017/11/12',N'03',' ',N'0101',N'2017/11/12',N'SON',N'0101',N'DMC',N'ABTBK17220YN',N'',N'1',N'D007',newid(),GETDATE(),GETDATE(),'IMPOR','IMPOR',GETDATE(),' ')

sp_help ZSORDERD
DELETE FROM ZSORDERH WHERE SOHNUM_0 = 'SYJ20171023001'

UPDATE ZSORDERD SET ITMDES1_0 = N'Contact tip M6x28 - Ø 1,0 E-Cu – Al' WHERE SOHNUM_0 = N'PJ20171020004' AND ITMREF_0 = N'71034157'

DELETE FROM ZSORDERD WHERE SOHNUM_0 = 'PJ20171020004'
DELETE FROM ZSORDERH WHERE SOHNUM_0 = 'PJ20171020004'



SELECT * FROM BOM


SELECT TOP 1000 * FROM PINVOICED WHERE NUMORI_0 = '0201REC17090262'

SELECT * FROM PRECEIPTD WHERE PTHNUM_0 = '0201REC17090262'



SELECT C.BPR_0 AS 客户编码,C.BPRNAM_0 AS 客户名称,C.ACCDAT_0 AS 发票日期,C.CUR_0 AS 币种,C.RATMLT_0 AS 汇率,A.NUM_0 AS 发票号,A.SIDLIN_0 AS 发票行,A.SDHNUM_0 AS 发货单号,
A.SDDLIN_0 AS 发货行,A.ITMREF_0 AS 物料号,A.ITMDES1_0 AS 产品描述,A.QTY_0  AS 数量,A.NETPRI_0*C.RATMLT_0 AS 发票含税价RMB,A.NETPRINOT_0*C.RATMLT_0 AS 发票价RMB,B.CPRPRI_0 AS 成本价RMB,C.RATMLT_0*A.AMTNOTLIN_0 AS 发票金额RMB FROM SINVOICED  A 
LEFT JOIN ZSCOST B ON A.SDHNUM_0=B.SDHNUM_0 AND A.SDDLIN_0=B.SDDLIN_0
INNER JOIN SINVOICE C ON A.NUM_0=C.NUM_0
WHERE C.ACCDAT_0 BETWEEN '2017-08-01' AND '2017-08-31'
AND C.FCY_0='0101'