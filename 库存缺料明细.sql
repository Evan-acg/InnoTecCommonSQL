SELECT A.STOFCY_0 as 地点,  
  A.ITMREF_0 as 产品,  
  X.ITMDES1_0 as 名称,  
  A.REOCOD_0 AS 建议类型,  
  B.QTY1_0 as 仓库库存,  
  C.QTY2_0 as 车间库存,  
  D.QTY3_0 AS 其他库存,  
  E.ALLQTY1_0 as 订单分配数量,  
  F.ALLQTY2_0 AS 工单分配数量,  
  G.ALLQTY3_0 AS 发货中数量,  
  H.POHQTY_0 AS 采购中数量,  
  I.MFGQTY_0 AS 工单短缺量,  
  J.SOHQTY_0 AS 订单短缺量,  
  K.MFGQTY1_0 AS 一周工单短缺,  
  L.SOHQTY1_0 AS 一周订单短缺  
FROM ITMFACILIT A  
 LEFT JOIN ITMMASTER X ON A.ITMREF_0 = X.ITMREF_0  
 LEFT JOIN (SELECT STOFCY_0,ITMREF_0,SUM(QTYSTU_0 - CUMALLQTY_0) AS QTY1_0 from STOCK WHERE LOC_0 IN ('M01','M02','M03') GROUP BY STOFCY_0,ITMREF_0) B ON A.ITMREF_0 = B.ITMREF_0 AND A.STOFCY_0 = B.STOFCY_0  
 LEFT JOIN (SELECT STOFCY_0,ITMREF_0,SUM(QTYSTU_0 - CUMALLQTY_0) AS QTY2_0 from STOCK WHERE LOC_0 = 'M04' GROUP BY STOFCY_0,ITMREF_0) C ON A.ITMREF_0 = C.ITMREF_0 AND A.STOFCY_0 = C.STOFCY_0  
 LEFT JOIN (SELECT STOFCY_0,ITMREF_0,SUM(QTYSTU_0 - CUMALLQTY_0) AS QTY3_0 from STOCK WHERE LOC_0 NOT IN ('M01','M02','M03','M04') GROUP BY STOFCY_0,ITMREF_0) D ON A.ITMREF_0 = D.ITMREF_0 AND A.STOFCY_0 = D.STOFCY_0  
 LEFT JOIN (SELECT STOFCY_0,ITMREF_0,SUM(QTYSTU_0) AS ALLQTY1_0 FROM STOALL WHERE VCRTYP_0 = 2 GROUP BY STOFCY_0,ITMREF_0) E ON A.ITMREF_0 = E.ITMREF_0 AND A.STOFCY_0 = E.STOFCY_0  
 LEFT JOIN (SELECT STOFCY_0,ITMREF_0,SUM(QTYSTU_0) AS ALLQTY2_0 FROM STOALL WHERE VCRTYP_0 = 10 GROUP BY STOFCY_0,ITMREF_0) F ON A.ITMREF_0 = F.ITMREF_0 AND A.STOFCY_0 = F.STOFCY_0  
 LEFT JOIN (SELECT STOFCY_0,ITMREF_0,SUM(QTYSTU_0) AS ALLQTY3_0 FROM STOALL WHERE VCRTYP_0 not in (2,10) GROUP BY STOFCY_0,ITMREF_0) G ON A.ITMREF_0 = G.ITMREF_0 AND A.STOFCY_0 = G.STOFCY_0  
 LEFT JOIN (SELECT POHFCY_0,ITMREF_0,SUM(QTYSTU_0 - RCPQTYSTU_0) AS POHQTY_0 FROM PORDERQ where LINCLEFLG_0 = 1 GROUP BY POHFCY_0,ITMREF_0) H ON A.ITMREF_0 = H.ITMREF_0 AND A.STOFCY_0 = H.POHFCY_0  
 LEFT JOIN (SELECT T1.MFGFCY_0,T1.ITMREF_0,SUM(T1.RETQTY_0 - T1.USEQTY_0 - T1.ALLQTY_0) AS MFGQTY_0 FROM MFGMAT T1 LEFT JOIN MFGHEAD T2 ON T1.MFGNUM_0 = T2.MFGNUM_0 WHERE T1.MATSTA_0 <> 4 AND T2.MFGSTA_0 <> 4 GROUP BY T1.MFGFCY_0,ITMREF_0) I ON A.ITMREF_0 = I.ITMREF_0 AND A.STOFCY_0 = I.MFGFCY_0  
 LEFT JOIN (select SALFCY_0,ITMREF_0,SUM(QTY_0 - ALLQTY_0 - DLVQTY_0) AS SOHQTY_0 from SORDERQ WHERE SOQSTA_0 <> 3 GROUP BY SALFCY_0,ITMREF_0) J ON A.ITMREF_0 = J.ITMREF_0 AND A.STOFCY_0 = J.SALFCY_0  
 LEFT JOIN (SELECT T3.MFGFCY_0,T3.ITMREF_0,SUM(T3.RETQTY_0 - T3.USEQTY_0 - T3.ALLQTY_0) AS MFGQTY1_0 FROM MFGMAT T3 LEFT JOIN MFGHEAD T4 ON T3.MFGNUM_0 = T4.MFGNUM_0 WHERE T3.MATSTA_0 <> 4 AND T4.MFGSTA_0 <> 4 AND T3.MFGNUM_0 IN (SELECT MFGNUM_0 FROM MFGITM WHERE STRDAT_0 < (GETDATE() + 7)) GROUP BY T3.MFGFCY_0,T3.ITMREF_0) K ON A.ITMREF_0 = K.ITMREF_0 AND A.STOFCY_0 = K.MFGFCY_0  
 LEFT JOIN (select SALFCY_0,ITMREF_0,SUM(QTY_0 - ALLQTY_0 - DLVQTY_0) AS SOHQTY1_0 from SORDERQ WHERE SOQSTA_0 <> 3 AND SOHNUM_0 IN (SELECT SOHNUM_0 FROM SORDERQ WHERE DEMDLVDAT_0 < (GETDATE() +7)) GROUP BY SALFCY_0,ITMREF_0) L ON A.ITMREF_0 = L.ITMREF_0 AND A.STOFCY_0 = L.SALFCY_0  
ORDER BY A.STOFCY_0,A.ITMREF_0


(SELECT T1.MFGFCY_0,T1.ITMREF_0,SUM(T1.RETQTY_0 - T1.USEQTY_0 - T1.ALLQTY_0) AS MFGQTY_0 FROM MFGMAT T1 LEFT JOIN MFGHEAD T2 ON T1.MFGNUM_0 = T2.MFGNUM_0 WHERE MATSTA_0 <> 4 AND ITMREF_0 = 'IHQ0501-01' AND T2.MFGSTA_0 <> 4 GROUP BY T1.MFGFCY_0,T1.ITMREF_0)
SELECT T1.MFGFCY_0,T1.ITMREF_0,T1.MFGNUM_0 FROM MFGMAT T1 LEFT JOIN MFGHEAD T2 ON T1.MFGNUM_0 = T2.MFGNUM_0 WHERE MATSTA_0 <> 4 AND ITMREF_0 = 'IHQ0501-01' AND T2.MFGSTA_0 <> 4