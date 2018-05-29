BEGIN TRAN INSERTDADA
BEGIN TRY
	INSERT INTO ZPORDERH(POHFCY_0,PURTYP_0,POHNUM_0,CUR_0,BPSNUM_0,BPAADD_0,STOFCY_0,PTE_0,BUY_0,ZREMARK_0,IMPFLG_0,IMPDAT_0,CREDATTIM_0,UPDDATTIM_0,AUUID_0,CREUSR_0,UPDUSR_0) 
			VALUES(N'0101',N'1',N'0101POH17090111',N'CNY',N'CHN-SH-4031',N'01',N'0101',N' ',N' ',N' ',N'1',N'2017-09-06',N'2017-09-06',N'2017-09-06',NEWID(),N'0003',N'0003')
	INSERT INTO ZPORDERD(ITMREF_0,ITMDES1_0,PUU_0,QTYPUU_0,QTYUOM_0,GROPRI_0,REMARK_0,POHNUM_0,POPLIN_0,POHFCY_0,BPSNUM_0,BPAADD_0,DEMDLVDAT_0,CREDATTIM_0,UPDDATTIM_0,AUUID_0,CREUSR_0,UPDUSR_0)
			VALUES(N'IHJ0078',N'��ǹ������ĸ/BZ ʽ/ͭ��ĸ',N'PCS',N'1',N'1',N'1',N' ',N'0101POH17090111',N'1000',N'0101',N'CHN-SH-4031',N'01',N'2017-09-06',N'2017-09-06',N'2017-09-06',NEWID(),N'0003',N'0003')
COMMIT TRAN
END TRY
BEGIN CATCH
	SELECT ERROR_NUMBER() AS ERRORNUMBER
	ROLLBACK TRAN
END CATCH


SELECT * FROM ZPORDERH
SELECT * FROM ZPORDERD

DELETE FROM ZPORDERH
DELETE FROM ZPORDERD

BEGIN TRAN INSERTDADA 
BEGIN TRY  
	INSERT INTO ZPORDERH(POHFCY_0,PURTYP_0,POHNUM_0,CUR_0,BPSNUM_0,BPAADD_0,STOFCY_0,PTE_0,BUY_0,ZREMARK_0,IMPFLG_0,IMPDAT_0,CREDATTIM_0,UPDDATTIM_0,AUUID_0,CREUSR_0,UPDUSR_0) VALUES(N'0101',N'1',N'TTT001',N'CNY',N'CHN-SH-4031',N'01',N'0101',N'123',N' ',N' ',N'1',N'2017-09-06',N'2017-09-06',N'2017-09-06',N' ',N'0003',N'0003',N'',N'',N'')  
	INSERT INTO ZPORDERD(ITMREF_0,ITMDES1_0,PUU_0,QTYPUU_0,QTYUOM_0,GROPRI_0,REMARK_0,POHNUM_0,POPLIN_0,POHFCY_0,BPSNUM_0,BPAADD_0,DEMDLVDAT_0,CREDATTIM_0,UPDDATTIM_0,AUUID_0,CREUSR_0,UPDUSR_0) VALUES(N'IHJ0078',N'��ǹ������ĸ/BZ ʽ/ͭ��ĸ',N'PCS',N' ',N' ',N' ',N' ',N'TTT001',N'1000',N'0101',N'CHN-SH-4031',N'01',N'2017-09-06',N'2017-09-06',N'2017-09-06',N' ',N'0003',N'0003',N'',N'',N'') 
	COMMIT TRAN 
END TRY 
BEGIN CATCH 
	SELECT ERROR_NUMBER() AS ERRORNUMBER 
	ROLLBACK TRAN 
END CATCH 

sp_help ZPORDERD

BEGIN TRAN INSERTDADA BEGIN TRY  
INSERT INTO ZPORDERH(POHFCY_0,PURTYP_0,POHNUM_0,CUR_0,BPSNUM_0,BPAADD_0,STOFCY_0,PTE_0,BUY_0,ZREMARK_0,IMPFLG_0,IMPDAT_0,CREDATTIM_0,UPDDATTIM_0,CREUSR_0,UPDUSR_0,AUUID_0) VALUES(N'0101',N'1',N'TTT001',N'CNY',N'CHN-SH-4031',N'01',N'0101',N'123',N' ',N' ',N'1',N'2017-09-06',N'2017-09-06',N'2017-09-06',N'0003',N'0003',NEWID())  
INSERT INTO ZPORDERD(ITMREF_0,ITMDES1_0,PUU_0,QTYPUU_0,QTYUOM_0,GROPRI_0,REMARK_0,POHNUM_0,POPLIN_0,POHFCY_0,BPSNUM_0,BPAADD_0,DEMDLVDAT_0,CREDATTIM_0,UPDDATTIM_0,CREUSR_0,UPDUSR_0,AUUID_0) VALUES(N'IHJ0078',N'��ǹ������ĸ/BZ ʽ/ͭ��ĸ',N'PCS',N'1',N'1',N'1',N' ',N'TTT001',N'1000',N'0101',N'CHN-SH-4031',N'01',N'2017-09-06',N'2017-09-06',N'2017-09-06',N'0003',N'0003',NEWID()) 
INSERT INTO ZPORDERD(ITMREF_0,ITMDES1_0,PUU_0,QTYPUU_0,QTYUOM_0,GROPRI_0,REMARK_0,POHNUM_0,POPLIN_0,POHFCY_0,BPSNUM_0,BPAADD_0,DEMDLVDAT_0,CREDATTIM_0,UPDDATTIM_0,CREUSR_0,UPDUSR_0,AUUID_0) VALUES(N'IKH0601',N'EPDM ��֯�� D.5x8 ��/��ɫ',N'MT',N'1',N'1',N'1',N' ',N'TTT001',N'2000',N'0101',N'CHN-SH-4031',N'01',N'2017-09-06',N'2017-09-06',N'2017-09-06',N'0003',N'0003',NEWID()) 
COMMIT TRAN END TRY BEGIN CATCH SELECT ERROR_NUMBER() AS ERRORNUMBER ROLLBACK TRAN END CATCH 


BEGIN TRY  
	BEGIN TRAN INSERTDADA 
		INSERT INTO ZPORDERH(POHFCY_0,PURTYP_0,POHNUM_0,CUR_0,BPSNUM_0,BPAADD_0,STOFCY_0,PTE_0,BUY_0,ZREMARK_0,IMPFLG_0,IMPDAT_0,CREDATTIM_0,UPDDATTIM_0,CREUSR_0,UPDUSR_0,AUUID_0) 
			VALUES(N'0101',N'1',N'TTT001',N'CNY',N'CHN-SH-4031',N'01',N'0101',N'123',N' ',N' ',N'1',N'2017-09-06',N'2017-09-06',N'2017-09-06',N'0003',N'0003',NEWID())  
		INSERT INTO ZPORDERD(ITMREF_0,ITMDES1_0,PUU_0,QTYPUU_0,QTYUOM_0,GROPRI_0,REMARK_0,POHNUM_0,POPLIN_0,POHFCY_0,BPSNUM_0,BPAADD_0,DEMDLVDAT_0,CREDATTIM_0,UPDDATTIM_0,CREUSR_0,UPDUSR_0,AUUID_0) 
			VALUES(N'IHJ0078',N'��ǹ������ĸ/BZ ʽ/ͭ��ĸ',N'PCS',N'1',N'1',N'1',N' ',N'TTT001',N'1000',N'0101',N'CHN-SH-4031',N'01',N'2017-09-06',N'2017-09-06',N'2017-09-06',N'0003',N'0003',NEWID()) 
		INSERT INTO ZPORDERD(ITMREF_0,ITMDES1_0,PUU_0,QTYPUU_0,QTYUOM_0,GROPRI_0,REMARK_0,POHNUM_0,POPLIN_0,POHFCY_0,BPSNUM_0,BPAADD_0,DEMDLVDAT_0,CREDATTIM_0,UPDDATTIM_0,CREUSR_0,UPDUSR_0,AUUID_0) 
			VALUES(N'IKH0601',N'EPDM ��֯�� D.5x8 ��/��ɫ',N'MT',N'1',N'1',N'1',N' ',N'TTT001',N'2000',N'101',N'CHN-SH-4031',N'01',N'2017-09-06',N'2017-09-06',N'2017-09-06',N'0003',N'0003',NEWID()) 
	COMMIT TRAN  
	RETURN 0
END TRY 
BEGIN CATCH 
	ROLLBACK TRAN 
	RETURN 1
END CATCH 




