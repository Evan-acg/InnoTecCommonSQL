SELECT DEFLOCTYP_0,DEFLOCTYP_1,DEFLOCTYP_2,DEFLOCTYP_3,DEFLOC_0,DEFLOC_1,DEFLOC_2,DEFLOC_3 FROM ITMFACILIT WHERE STOFCY_0 = '0201'
SELECT DEFLOCTYP_0,DEFLOCTYP_1,DEFLOCTYP_2,DEFLOCTYP_3,DEFLOC_0,DEFLOC_1,DEFLOC_2,DEFLOC_3 FROM ITMFACILIT WHERE ITMREF_0 = N'AE0209002' AND STOFCY_0 = N'0201'

UPDATE ITMFACILIT SET DEFLOCTYP_0 = N'',DEFLOCTYP_1 = N'',DEFLOCTYP_2 = N'',DEFLOCTYP_3 = N'',DEFLOC_0 = N'',DEFLOC_1 = N'',DEFLOC_2 = N'',DEFLOC_3 = N''WHERE ITMREF_0 = N'AE0209002' AND STOFCY_0 = N'0201'
