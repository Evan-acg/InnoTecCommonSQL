SELECT * FROM MFGITMTRK WHERE MFGNUM_0 = '0203MFG17021374'

SELECT * FROM ZSORDERD WHERE SOHNUM_0 = '0101SOH1703FB01'
SELECT * FROM ZSORDERH WHERE SOHNUM_0 = '0101SOH1703FB01'

UPDATE ZSORDERH SET STOFCY_0 = '0101' WHERE SOHNUM_0 = '0101SOH1703FB01'
SELECT * FROM PORDER WHERE POHNUM_0 = '0101POH17030167'


SELECT * FROM SORDERQ WHERE SOHNUM_0 = '0101SOH17020200'
SELECT * FROM PORDERQ WHERE POHNUM_0 = ''
SELECT * FROM ZSOYN WHERE XSOHNUM_0 = '0201SOH17020218'
SELECT * FROM MFGITM WHERE WIPNUM_0 = 'WIP02011702055549'
SELECT * FROM MFGHEAD
SELECT * FROM ORDERS WHERE VCRNUM_0 = '0201SOH17020218'
SELECT * FROM SDELIVERYD WHERE SOHNUM_0 = '0201SOH17020218'
SELECT * FROM PRECEIPTD



SELECT T1.SOHNUM_0 AS N'���۶�����',
		(CASE T1.FMI_0 WHEN 1 THEN N'���' WHEN 2 THEN N'ֱ�Ӷ���' WHEN 3 THEN N'�ջ���ֱ�Ӷ���' WHEN 4 THEN N'ת�ƶ���' WHEN 5 THEN N'����' END) AS '������ʽ',
		T7.BPCNAM_0 AS N'�ͻ�����',
		T1.ITMREF_0 AS N'��Ʒ����',
		T6.ITMDES1_0 AS N'��Ʒ����',
		T2.POHNUM_0 AS N'�ɹ�������',
		T3.XSOHNUM_0 AS N'��ҵ�����۶�����',
		T4.SDHNUM_0 AS N'��ҵ����������',
		T4.QTY_0 AS N'��ҵ����������',
		T5.PTHNUM_0 AS N'�����ջ�����',
		T5.QTYSTU_0 AS N'�����ջ�����',
		T8.SDHNUM_0 AS N'���۷�������'
FROM SORDERQ T1
	LEFT JOIN PORDERQ T2 ON T1.FMINUM_0 = T2.POHNUM_0 AND T1.FMILIN_0 = T2.POPLIN_0
	LEFT JOIN ZSOYN T3 ON T1.SOHNUM_0 = T3.SOHNUM_0 AND T1.SOPLIN_0 = T3.SOPLIN_0
	LEFT JOIN SDELIVERYD T4 ON T3.XSOHNUM_0 = T4.SOHNUM_0 AND T3.XSOPLIN_0 = T4.SOPLIN_0
	LEFT JOIN PRECEIPTD T5 ON T2.POHNUM_0 = T5.POHNUM_0 AND T2.POPLIN_0 = T5.POPLIN_0
	LEFT JOIN ITMMASTER T6 ON T1.ITMREF_0 = T6.ITMREF_0
	LEFT JOIN BPCUSTOMER T7 ON T1.BPCORD_0 = T7.BPCNUM_0
	LEFT JOIN (SELECT SDHNUM_0,SOHNUM_0,SOPLIN_0 FROM SDELIVERYD WHERE STOFCY_0 = '0101') T8 ON T1.SOHNUM_0 = T8.SOHNUM_0 AND T1.SOPLIN_0 = T8.SOPLIN_0
WHERE T1.SALFCY_0 = '0101' AND T1.SOHNUM_0 = '0101SOH17020200'

ORDER BY T1.SOHNUM_0

SELECT AVC_0 FROM ITMMVT WHERE ITMREF_0 = 'MZT8021'
SELECT * FROM PRECEIPTD WHERE PTHNUM_0 = '0201REC17030244'


SELECT * FROM STOJOU WHERE ITMREF_0 = 'IRT0691' AND QTYSTU_0 = 500
SELECT * FROM STOJOU WHERE LOT_0 = 'LO170302012667'


DELETE FROM ZSORDERD WHERE SOHNUM_0 = 'SYJHLV2017032101'
DELETE FROM ZSORDERH WHERE SOHNUM_0 = 'SYJHLV2017032101'









