--SELECT ITMREF_0,ITMDES1_0,STU_0,TCLCOD_0 FROM ITMMASTER WHERE ITMREF_0 IN(SELECT RIGHT(ITMREF_0,LEN(ITMREF_0)-1) FROM ITMMASTER )
SELECT ITMREF_0,N'MP3',ITMDES1_0,STU_0,TCLCOD_0 FROM ITMMASTER WHERE ITMREF_0 IN(SELECT RIGHT(ITMREF_0,LEN(ITMREF_0)-1) FROM ITMMASTER ) AND TCLCOD_0 <> N'MP3'
--SELECT TOP 100 * FROM ITMMASTER



SELECT * FROM ITMMASTER WHERE ITMREF_0 LIKE N'T%' AND TCLCOD_0 = N'MP3'