SELECT  T1.CREDAT_0 N'���۶�������',
  T1.SOHNUM_0 N'���۶�����',
  T1.FMINUM_0 N'�ɹ�������',
  T5.SOHNUM_0 N'��ҵ��������',
  T1.BPCORD_0 N'�ͻ�����',
  T3.BPCNAM_0 N'�ͻ�����',
  T1.ITMREF_0 N'��Ʒ����',
  T4.ITMDES_0 N'��Ʒ����',
  T1.QTY_0 N'���۶�������',
  T1.DLVQTY_0 N'�ѷ�������',
  T1.ZRMK_0 N'��ע',
  T1.ZCUSNUM_0 N'�ͻ�����',
  T1.DEMDLVDAT_0 N'Ҫ�󷢻�����',
  T4.GROPRI_0 N'��˰����',
  T3.CUR_0 N'����',
  T4.GROPRI_0 * T1.QTY_0 N'ԭ��δ˰���',
  (CASE WHEN T3.CUR_0  = N'CNY' THEN T4.GROPRI_0 * T1.QTY_0 ELSE T4.GROPRI_0 * T1.QTY_0 * T3.CHGRAT_0 END) N'���δ˰���',
  T3.CHGRAT_0 N'����',
  T8.BPRNAM_0 N'���۴���',
  T9.NOMUSR_0 N'���۶��������û�'
FROM SORDERQ T1
 LEFT JOIN PORDERQ T2 ON T1.SOHNUM_0 = T2.SOHNUM_0 AND T1.SOPLIN_0 = T2.SOPLIN_0
 LEFT JOIN SORDER T3 ON T1.SOHNUM_0 = T3.SOHNUM_0
 LEFT JOIN SORDERP T4 ON T1.SOHNUM_0 = T4.SOHNUM_0 AND T1.SOPLIN_0 = T4.SOPLIN_0
 LEFT JOIN SORDERQ T5 ON T2.POHNUM_0 = T5.POHNUM_0 AND T2.POPLIN_0 = T5.POPLIN_0
 LEFT JOIN BPARTNER T8 ON T3.REP_0 = T8.BPRNUM_0
 LEFT JOIN AUTILIS T9 ON T1.CREUSR_0 = T9.USR_0
WHERE T1.SALFCY_0  = N'0101'
	AND T3.ORDSTA_0 = 1
	AND T1.SOHNUM_0 = '0101SOH17060533'
	AND LEFT(T5.SOHNUM_0,4) = '0202'
ORDER BY T1.SOHNUM_0,T1.SOPLIN_0