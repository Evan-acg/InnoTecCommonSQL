--SELECT * FROM ORDERS WHERE VCRNUM_0 = 'SUG0202000002055526'

--SELECT * FROM SORDERQ WHERE SOHNUM_0 = '0202SOH17010135' AND ITMREF_0 = 'ISQ6080'

--SELECT * FROM PRECEIPT
--SELECT * FROM PA


--SELECT * FROM SORDERQ WHERE SOHNUM_0 = '0101SOH17030262'
--SELECT * FROM SORDERQ WHERE SOHNUM_0 = '0101SOH16120164' AND ITMREF_0 = 'ICU0069-10'
--SELECT * FROM SORDERQ WHERE SOHNUM_0 = '0201SOH17010207' AND ITMREF_0 = 'ICU0069-10'
--SELECT * FROM PORDERQ WHERE POHNUM_0 = '0101POH17010508' AND ITMREF_0 = 'ICU0069-10'


SELECT * FROM SORDERQ WHERE SOHNUM_0 = '0101SOH16120164' AND ITMREF_0 = 'ICF0003'
SELECT * FROM BPARTNER
SELECT * FROM GACCENTRYD WHERE NUM_0 LIKE 'REC%'

SELECT T1.TYP_0,
		T1.NUM_0,
		T1.FIY_0,
		T1.	PER_0,
		T1.SAC_0,
		T1.ACC_0,
		T1.DSP_0,
		T1.SNS_0,
		T1.DES_0,
		T1.BPR_0,
		T2.BPRNAM_0
FROM GACCENTRYD T1
	LEFT JOIN BPARTNER T2 ON T1.BPR_0 = T2.BPRNUM_0

SELECT * FROM SORDERQ WHERE ITMREF_0 = 'ISQ4080' AND QTY_0 = 5000

SELECT * FROM PORDERQ WHERE ITMREF_0 = 'ISQ4080' AND QTY_0 = 5000

SELECT * FROM PRECEIPTD WHERE ITMREF_0 = 'ISQ4080'

SELECT * FROM SRETURND WHERE ITMREF_0 = 'ICU0004-12'

SELECT * FROM AFCTPRF where PRFCOD_0 = 'Y003'


SELECT TSICOD_0,* FROM ITMMASTER 


