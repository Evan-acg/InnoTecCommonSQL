SELECT T2.TCLCOD_0
FROM ITMFACILIT T1
	LEFT JOIN ITMMASTER T2 ON T1.ITMREF_0 = T2.ITMREF_0
WHERE T1.STOFCY_0 = N'0301'
GROUP BY T2.TCLCOD_0

SELECT TOP 188 * FROM ITMMASTER

SELECT * FROM ITMFACILIT WHERE STOFCY_0 = N'0301' ORDER BY ITMREF_0 DESC

SELECT TOP 100 * FROM ITMCOST


SELECT * FROM 


SELECT ITMREF_0 FROM ITMFACILIT WHERE STOFCY_0 = N'0102' AND ITMREF_0 LIKE N'MSQ%'

SELECT * FROM WECHATUSER
INSERT INTO WECHATUSER(USERID_0,USERNAME_0,SITE_0,CREDATTIM_0,UPDDATTIM_0,AUUID_0,CREUSR_0,UPDUSR_0) VALUES(N'oweak1BnhI326Qy9NZ4ZTLR-emqw',N'�޲���','0101',GETDATE(),GETDATE(),NEWID(),N'ADMIN',N'ADMIN')
SELECT SITE_0 FROM WECHATUSER WHERE USERID_0 = N'oweak1BnhI326Qy9NZ4ZTLR-emqw'
SELECT TOP 100 * FROM SORDERP
SELECT SUM(ORDINVATI_0) FROM SORDER WHERE SALFCY_0 = N'0101' AND CREDAT_0 BETWEEN N'2017-01-01' AND N'2017-12-31'
SELECT TOP 100 * FROM SORDER

SELECT * FROM STOJOU WHERE ITMREF_0 = N'IGV0685-06' AND VCRNUM_0 = N'0202ISS18040005'


SELECT * FROM ORDERS WHERE ITMREF_0 = N'IHQ0210' AND VCRNUM_0 = N'0202SOH18050036'

UPDATE ORDERS SET MTOQTY_0 = 0 WHERE ITMREF_0 = N'IHQ0210' AND VCRNUM_0 = N'0202SOH18050036'

SELECT * FROM PORDERQ WHERE POHNUM_0 = N'0301POH18040009'

SELECT TOP 100 * FROM SORDERQ WHERE SALFCY_0 = N'0201'

SELECT * FROM SORDERQ T1 RIGHT JOIN PORDERQ T2 ON T1.POHNUM_0 = T2.POHNUM_0 AND T1.POPLIN_0 = T2.POPLIN_0 WHERE T2.POHNUM_0 = N'0301POH18040009' AND T1.SOHNUM_0 IS NULL


SELECT MTC_0,BPR_0,* FROM GACCENTRYD WHERE NUM_0='0101SIH18040091'
DECLARE @SIHNUM_0 AS NVARCHAR(100)
SELECT @SIHNUM_0 = N'0101SIH18040091'
DELETE FROM TRCVCRDOC WHERE NUM_0= N'0101SIH18050014'
UPDATE GACCENTRY SET ORIMOD_0=2,FLGGEN_0=1 WHERE NUM_0= N'0101SIH18050014'
UPDATE SINVOICE SET STA_0=1 WHERE NUM_0= N'0101SIH18050014'
UPDATE SINVOICEV SET INVSTA_0=1 WHERE NUM_0= N'0101SIH18050014'


SELECT * FROM MFGMAT WHERE MFGNUM_0 = N'0202MFG18020303'

SELECT * FROM ORDERS WHERE ITMREF_0 = N'ISQ7075' AND ORIFCY_0 = N'0301'