--SELECT T1.POHNUM_0,
--		T1.POPLIN_0,
--		T2.SOHNUM_0,
--		T2.SOPLIN_0
--FROM PORDERQ T1
--	RIGHT JOIN (SELECT SOHNUM_0,SOPLIN_0 FROM SORDERQ WHERE FMI_0 = '3' AND FMINUM_0 = '') T2 ON T1.SOHNUM_0 = T2.SOHNUM_0 AND T1.SOPLIN_0 = T2.SOPLIN_0
--WHERE T1.POHFCY_0 = '0101'

--UPDATE T4 
--SET T4.FMINUM_0 = T3.POHNUM_0,T4.FMILIN_0 = T3.POPLIN_0
--FROM SORDERQ T4
--	RIGHT JOIN (SELECT T1.POHNUM_0,
--				T1.POPLIN_0,
--				T2.SOHNUM_0,
--				T2.SOPLIN_0
--		FROM PORDERQ T1
--			RIGHT JOIN (SELECT SOHNUM_0,SOPLIN_0 FROM SORDERQ WHERE FMI_0 = '3' AND FMINUM_0 = '') T2 ON T1.SOHNUM_0 = T2.SOHNUM_0 AND T1.SOPLIN_0 = T2.SOPLIN_0
--		WHERE T1.POHFCY_0 = '0101'
--	) T3 ON T4.SOHNUM_0 = T3.SOHNUM_0 AND T4.SOPLIN_0 = T4.SOPLIN_0

SELECT * FROM SORDERQ WHERE CREUSR_0 = '0078'

SELECT SOHNUM_0,SOPLIN_0,ITMREF_0,QTY_0 FROM SORDERQ WHERE FMI_0 = '3' AND FMINUM_0 = '' AND SOQSTA_0 <> '3' AND SOHNUM_0 = '0101SOH17020244'

--UPDATE SORDERQ SET FMINUM_0 = '0101POH17020724',FMILIN_0 = '27000' WHERE SOHNUM_0 = '0101SOH17020244' AND SOPLIN_0 = '27000'
--UPDATE PORDERQ SET SOHNUM_0 = '0101SOH17020244',SOPLIN_0 = '27000' WHERE POHNUM_0 = '0101POH17020724' AND POPLIN_0 = '27000'


SELECT * FROM PORDERQ WHERE SOHNUM_0 = '0101SOH17020244' AND SOPLIN_0 = '27000'
SELECT * FROM PORDERQ WHERE ITMREF_0 = 'MCH0515' AND QTYSTU_0 = 5.0000000000000
SELECT * FROM PORDERQ WHERE POHNUM_0 = '0101POH17050162' AND POPLIN_0 = '2000'

SELECT * FROM SORDERQ WHERE ITMREF_0 = 'IOZ6922-1621' AND QTY_0 = 80.0000000000000
SELECT * FROM SORDER WHERE SOHNUM_0 = '0101SOH17020244'

