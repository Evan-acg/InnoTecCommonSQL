-- SELECT * FROM SORDERQ WHERE SOHNUM_0 = '0101SOH16110001'
-- SELECT * FROM SORDERP
-- SELECT * FROM AUTILIS
-- SELECT * FROM BPCUSTOMER
-- SELECT * FROM ITMBPC
-- SELECT * FROM ZSOYN



--SELECT T1.SOHNUM_0 AS N'���۶���',
--		T1.SOPLIN_0 / 1000 AS N'�к�',
--		T1.ITMREF_0 AS N'��Ʒ',
--		T2.ITMDES_0 AS N'��Ʒ����',
--		T1.BPCORD_0 AS N'�ͻ�',
--		(SELECT BPCNAM_0 FROM BPCUSTOMER WHERE BPCNUM_0 = T1.BPCORD_0) AS N'�ͻ�����',
--		T1.UPDDATTIM_0 AS N'��������',
--		T1.CREDATTIM_0 AS N'��������',
--		T1.SHIDAT_0 AS N'����',
--		T1.QTY_0 AS N'����',
--		T1.DLVQTY_0 AS N'�ѷ�������',
--		T1.INVQTY_0 AS N'�ѿ�Ʊ����',
--		T2.NETPRI_0 AS N'����',
--		(T1.QTY_0 * T2.NETPRI_0) AS N'���',
--		T6.CUR_0 AS N'����',
--		T1.ZRMK_0 AS N'��ע',
--		T1.ZCUSNUM_0 AS N'�ͻ�������',
--		T3.NOMUSR_0 AS N'�����û�',
--		T1.FMI_0 AS N'������ʽ',
--		T4.ITMDESBPC_0 AS N'�ͻ���Ʒ��',
--		T5.XSOHNUM_0 AS N'�ڲ�������',
--		T5.XSOPLIN_0 / 1000 AS N'�ڲ������к�'
--FROM SORDERQ T1
--	LEFT JOIN SORDERP T2 ON T1.SOHNUM_0 = T2.SOHNUM_0 AND T1.SOPLIN_0 = T2.SOPLIN_0
--	LEFT JOIN AUTILIS T3 ON T1.CREUSR_0 = T3.USR_0
--	LEFT JOIN ITMBPC T4 ON T1.ITMREF_0 = T4.ITMREF_0
--	LEFT JOIN ZSOYN T5 ON T1.SOHNUM_0 = T5.SOHNUM_0 AND T1.SOPLIN_0 = T5.SOPLIN_0
--	LEFT JOIN SORDER T6 ON T1.SOHNUM_0 = T6.SOHNUM_0
--ORDER BY T5.SOHNUM_0,T5.XSOPLIN_0

-- SELECT * FROM ITMMASTER


--SELECT T1.ITMREF_0 AS N'��Ʒ',
--		T1.ITMDES1_0 AS N'��Ʒ����',
--		T1.STU_0 AS N'��λ',
--		(CASE T1.TSICOD_0 WHEN 3 THEN N'PLASMA' END) AS ͳ����,
--		(CASE T1.TSICOD_1 WHEN 2 THEN N'���ӹ�����' ELSE N'��װ����' END) AS ͳ����1
--FROM ITMMASTER T1
--WHERE T1.TSICOD_0 = 3


-- SELECT * FROM MFGMATTRK WHERE ITMREF_0 = N'XXX0002'

--SELECT T1.MFGNUM_0 AS N'������',
--		T1.MFGTRKNUM_0 AS N'׷�ٺ�',
--		T1.ITMREF_0 AS N'��Ʒ',
--		T1.STU_0 AS N'��λ',
--		T1.UOMCPLQTY_0 AS N'����',
--		T1.CREDATTIM_0 AS N'����'
--FROM MFGITMTRK T1
--WHERE T1.ITMREF_0 IN (N'XXX0000',N'XXX0001',N'XXX0002')





--SELECT T1.MFGNUM_0 AS N'������',
--		T1.ITMREF_0 AS N'��Ʒ����',
--		T2.ITMDES1_0 AS N'��Ʒ����',
--		CASE T1.MFGSTA_0 WHEN 1 THEN N'ȷ��' WHEN 2 THEN N'�ƻ�' WHEN 3 THEN N'����' END AS N'����״̬',
--		T1.STU_0 AS N'��λ',
--		T1.BOMQTY_0 AS N'��λ����',
--		T1.RETQTY_0 AS N'��������',
--		T1.USEQTY_0 AS N'����������',
--		T1.ALLQTY_0 AS N'��ָ������',
--		T1.SHTQTY_0 AS N'��ȱ����',
--		T1.YREQQTY_0 AS N'����������'
--FROM MFGMAT T1
--	LEFT JOIN ITMMASTER T2 ON T1.ITMREF_0 = T2.ITMREF_0
--WHERE MFGFCY_0 = '0202' 
--	AND MFGSTA_0 <> '4' 
--	AND T1.RETQTY_0 <> T1.ALLQTY_0
--	AND T1.YREQQTY_0 > 0
--ORDER BY MFGNUM_0


--SELECT * FROM PRECEIPTD WHERE PTHNUM_0 = '0201REC17010029'

--SELECT * FROM SCHGD WHERE ITMREF_0 = 'IZT0084' AND LOT_0 = 'LO170102010073'

--SELECT * FROM STOCK WHERE LOT_0 = 'LO170102010073'
--SELECT * FROM STOCK WHERE ITMREF_0 = 'IZT0084'
--SELECT * FROM STOJOU WHERE ITMREF_0 = 'IZT0084' AND QTYPCU_0 = 11400

-- SELECT MFMTRKFLG_0,* FROM MFGMAT WHERE MFMTRKFLG_0 <> 1 AND MFGFCY_0 = '0202'

SELECT T1.MFGNUM_0 AS N'������',
		T1.ITMREF_0 AS N'��Ʒ����',
		T2.ITMDES1_0 AS N'��Ʒ����',
		CASE T1.MFGSTA_0 WHEN 1 THEN N'ȷ��' WHEN 2 THEN N'�ƻ�' WHEN 3 THEN N'����' END AS N'����״̬',
		T1.STU_0 AS N'��λ',
		T1.BOMQTY_0 AS N'��λ����',
		T1.RETQTY_0 AS N'��������',
		T1.USEQTY_0 AS N'����������',
		T1.ALLQTY_0 AS N'��ָ������',
		T1.SHTQTY_0 AS N'��ȱ����',
		T1.YREQQTY_0 AS N'����������'
FROM MFGMAT T1
	LEFT JOIN ITMMASTER T2 ON T1.ITMREF_0 = T2.ITMREF_0
WHERE MFMTRKFLG_0 <> 1 
	AND MFGFCY_0 = '0202'


SELECT * FROM SDELIVERYD WHERE 

SELECT SOHNUM_0 FROM SORDERQ  WHERE  SDHNUM_0 = '' AND SALFCY_0 <> '0101' GROUP BY SOHNUM_0

SELECT SDH
























































