SELECT T1.SDHNUM_0 AS N'��������',
		  T1.SOHNUM_0 AS N'���۶�����',
		  (T1.SOPLIN_0/1000) AS N'���۶����к�',
		  T4.XSOHNUM_0 AS N'��ҵ��������',
		  T3.BPCNAM_0 AS N'�ͻ�����',
		  T1.ITMREF_0 AS N'��Ʒ����',
		  T1.QTY_0 AS N'��Ʒ����',
		  T1.GROPRI_0 AS N'��Ʒ����',
		  (T1.QTY_0 * T1.GROPRI_0 * CHGRAT_0) AS N'������ʺ�Ľ��', 
		  T2.CUR_0 AS N'����',
		  T2.CHGRAT_0 AS N'����',
		  T1.CREUSR_0 AS N'�Ƶ���',
		  T1.REP1_0 AS N'ҵ�����',
		  (CASE T2.CFMFLG_0 WHEN 1 THEN N'��' WHEN 2 THEN N'��' END) AS N'��˱�־',
		  T1.CREDAT_0 AS N'�Ƶ�����',
		  T1.NETPRINOT_0 AS N'����˰����',
		  T1.NETPRIATI_0 AS N'��˰����',
		  T1.PFM_0 AS N'����',
		  T1.CPRPRI_0 AS N'�ɱ���'
FROM SDELIVERYD T1
 LEFT JOIN SDELIVERY T2 ON T1.SDHNUM_0 = T2.SDHNUM_0
 LEFT JOIN BPCUSTOMER T3 ON T1.BPCORD_0 = T3.BPCNUM_0
 LEFT JOIN ZSOYN T4 ON T1.SOHNUM_0 = T4.SOHNUM_0 AND T1.SOPLIN_0 = T4.SOPLIN_0
WHERE T1.STOFCY_0 = '0101'



SELECT * FROM SDELIVERYD WHERE SDHNUM_0 = '0101SDH17070480'


SELECT * FROM MFGITMTRK WHERE ITMREF_0 = 'IVU3761-00'