SELECT * FROM ORDERS WHERE ITMREF_0 = 'IHJ0828'

SELECT SUM(RMNEXTQTY_0) FROM ORDERS WHERE ITMREF_0 = 'ICN0074'




SELECT SDHNUM_0 FROM SDELIVERYD WHERE SOHNUM_0 IN(N'0101SOH17080504',N'0101SOH17080474',N'0101SOH17070046',N'0101SOH17070598',N'0101SOH17080125',N'0101SOH17080298') GROUP BY SDHNUM_0





SELECT TOP 1000 * FROM MFGITM WHERE VCRNUMORI_0 = '0202SOH17090001'


SELECT * FROM BOMD WHERE ITMREF_0 IN('IHJ0828','IGN0091-06')

SELECT TOP 1000 YBPCSHO_0* FROM SORDER WHERE SALFCY_0 <> '0101'