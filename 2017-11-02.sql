SELECT * FROM ORDERS WHERE ITMREF_0 = 'IGZ0662'


SELECT * FROM SORDERQ WHERE SOHNUM_0 = '0202SOH17050226'
SELECT * FROM SORDERQ WHERE FMINUM_0 = '0101POH17050872'
SELECT SOHNUM_0,* FROM PORDERQ WHERE POHNUM_0 = '0101POH17050872'

SELECT * FROM SORDERQ WHERE ITMREF_0 = 'ION9506-GW001' AND QTY_0 = 200


SELECT * FROM SORDERQ WHERE SOHNUM_0 = '0101SOH17060465' AND ITMREF_0 IN('ICU0003-78','ICU0004-78','ICU0005-80','ICU0005-82')
SELECT * FROM PRECEIPTD	WHERE POHNUM_0 = '0101POH17060719' AND ITMREF_0 IN('ICU0003-78','ICU0004-78','ICU0005-80','ICU0005-82')
UPDATE PRECEIPTD SET RTNQTYSTU_0 = 0 WHERE POHNUM_0 = '0101POH17060719' AND ITMREF_0 IN('ICU0003-78','ICU0004-78','ICU0005-80','ICU0005-82')