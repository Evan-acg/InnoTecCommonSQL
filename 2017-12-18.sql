SELECT MTOQTY_0,* FROM ORDERS WHERE ITMREF_0 = N'IGN0005' AND VCRNUM_0 = N'0202SOH17120101'
--UPDATE ORDERS SET MTOQTY_0 = 0 WHERE ITMREF_0 = N'IGN0005' AND VCRNUM_0 = N'0202SOH17120101'
SELECT * FROM MFGITM WHERE ITMREF_0 = N'IIC0291' AND VCRNUMORI_0 = N'0201SOH17120109'

SELECT * FROM PORDERQ WHERE ITMREF_0 = N'MZT8091'
SELECT * FROM STOALL WHERE ITMREF_0 = N'MCT6330'
DELETE FROM STOALL WHERE ITMREF_0 = N'MCT6330'
SELECT * FROM SORDERQ WHERE ITMREF_0 = N'IGN0005' AND QTY_0 = 100
SELECT * FROM ROUOPE WHERE ITMREF_0 = N'IGN0005'

SELECT * FROM ITMFACILIT WHERE STOFCY_0 = N'0102' AND ITMREF_0 = N'MIC0510'
--UPDATE ITMFACILIT SET DEFLOCTYP_0 = N'SMI', DEFLOCTYP_1 = N'SMI', DEFLOCTYP_2 = N'SMI',DEFLOC_0 = N'MI1',DEFLOC_1 = N'MI1',DEFLOC_2 = N'MI1' WHERE STOFCY_0 = N'0102'


SELECT * FROM AFCTPRF WHERE PRFCOD_0 = N'YSALA'

SELECT * FROM SORDERQ WHERE SALFCY_0 = N'0102' AND BPCORD_0 = N'YN-005'

 
SELECT * FROM BPDLVCUST WHERE STOFCY_0 <> N'0101'