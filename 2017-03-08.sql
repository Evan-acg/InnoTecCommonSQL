SELECT * FROM ZSORDERD WHERE SOHNUM_0 = 'YNXYJS20170308001'

--DELETE FROM ZSORDERD WHERE SOHNUM_0 = 'YNXYJS20170308001'
--DELETE FROM ZSORDERH WHERE SOHNUM_0 = 'YNXYJS20170308001'

SELECT * FROM PAYMENTH
SELECT * FROM PORDERQ WHERE POHNUM_0 = '0203POH17030064'
SELECT SDHNUM_0,* FROM SORDERQ WHERE SOHNUM_0 = '0202SOH17030045'
SELECT * FROM SORDER
SELECT * FROM SDELIVERYD WHERE SDHNUM_0 = '0202SDI17030017'

SELECT * FROM AOBJTAB WHERE TABFIC_0 LIKE '%STO%' AND TABLIEN_0 = ''
SELECT * FROM ATEXTE

SELECT * FROM ATEXTE WHERE TEXTE_0 LIKE '%STOCK%'
SELECT * FROM ATEXTRA WHERE TEXTE_0 LIKE N'%ѡ%'

SELECT * FROM YREQH WHERE VCRNUM_0 = 'YRI020317020005'
SELECT * FROM YREQD WHERE VCRNUM_0 = 'YRI020317020005'
-- UPDATE YREQD SET LINSTA_0 = 1 WHERE VCRNUM_0 = 'YRI020317020005'
-- UPDATE YREQD SET USEQTY_0 = 0 WHERE VCRNUM_0 = 'YRI020317020005'