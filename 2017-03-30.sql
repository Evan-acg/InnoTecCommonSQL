SELECT * FROM SORDERQ WHERE DEMDLVDAT_0 < GETDATE()


SELECT A.ITMREF_0,
		A.STOFCY_0,
		(CASE A.REOCOD_0 WHEN 1 THEN N'无建议' WHEN 2 THEN N'采购' WHEN 3 THEN N'生产' WHEN 4 THEN N'地点' WHEN 5 THEN N'外协' END) 建议类型,
		B.AVC_0 加权平均价,
		B.LASPURPRI_0 上次采购价,
		B.LASRCPPRI_0 上次收货成本 ,
		C.CSTTOT_0 标准成本,
		C.MATTOT_0 组件成本,
		C.MACTOT_0 机器成本,
		C.LABTOT_0 劳力成本,
		C.SCOTOT_0 外协成本 
FROM ITMFACILIT A
	LEFT JOIN ITMMVT B ON (A.ITMREF_0=B.ITMREF_0 and A.STOFCY_0=B.STOFCY_0)
	LEFT JOIN ITMCOST C ON (A.ITMREF_0=C.ITMREF_0 and A.STOFCY_0=C.STOFCY_0 AND C.ITCENDDAT_0='2017-12-31')

SELECT * FROM ITMFACILIT


SELECT CFMFLG_0,SDHNUM_0 FROM SDELIVERY WHERE SDHNUM_0 IN ('0101SDH17030261','0101SDH17030685','0101SDH17030519','0101SDH17030261','0101SDH17030518','0101SDH17030805','0101SDH17030694','0101SDH17030824','0101SDH17030805','0101SDH17030824','0101SDH17030824')




SELECT * FROM PORDERP 
SELECT * FROM PORDERQ

SELECT T1.POHNUM_0 AS N'采购订单号',
		T1.ITMREF_0 AS N'产品代码',
		T2.ITMDES1_0 AS N'产品名称',
		T2.GROPRI_0 AS N'毛价',
		T1.BPSNUM_0 AS N'供应商',
		T1.STU_0 AS N'单位'
FROM PORDERQ T1
	LEFT JOIN PORDERP T2 ON T1.POHNUM_0 = T2.POHNUM_0 AND T1.POPLIN_0 = T2.POPLIN_0
WHERE T1.BPSNUM_0 NOT LIKE 'YN-%'

SELECT * FROM SINVOICED WHERE NUM_0 = '0101SIH17030166'
SELECT * FROM SINVOICE WHERE NUM_0 = '0101SIH17030166'

SELECT * FROM SRETURND
SELECT * FROM SRETURN

SELECT * FROM SDELIVERY WHERE SDHNUM_0 = '0101SDH17030804'

