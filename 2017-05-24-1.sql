SELECT * FROM SORDERQ WHERE SOHNUM_0 = '0101SOH17050046' AND FMINUM_0 = ''

SELECT * FROM PORDERQ WHERE SOHNUM_0 = '0101SOH17050046'
SELECT * FROM PORDERQ WHERE ITMREF_0 = 'MCU0747-80' AND QTYPUU_0 = 1000 AND SOHNUM_0 = ''
SELECT * FROM PORDERQ WHERE POHNUM_0 = '0101POH17050170' AND POPLIN_0 = '3000'

SELECT * FROM SORDERQ WHERE ITMREF_0 = 'MCU0747-80' AND QTY_0 = 1000

SELECT * FROM SORDERQ WHERE SOHNUM_0 = '0203SOH17050062' AND SOPLIN_0 = '3000'

--UPDATE PORDERQ SET SOHNUM_0 = '0101SOH17050046',SOPLIN_0 = '1000' WHERE POHNUM_0 = '0101POH17050059' AND POPLIN_0 = '1000'
--UPDATE SORDERQ SET FMINUM_0 = '0101POH17050059',FMILIN_0 = '1000' WHERE SOHNUM_0 = '0101SOH17050046' AND SOPLIN_0 = '1000'
	