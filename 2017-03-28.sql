CREATE TABLE TTT(
	EName VARCHAR(10),
	Address VARCHAR(100),
	Money INt
)
SELECT * FROM TTT
INSERT INTO TTT(EName, Address,Money) VALUES('����','�Ϻ�',100)
INSERT INTO TTT(EName, Address,Money) VALUES('����','����',200)
INSERT INTO TTT(EName, Address,Money) VALUES('����','����',300)

SELECT * FROM TTT PIVOT(MAX(Money) FOR Address IN (SELECT DISTINCT ADDRESS FROM TTT)) T1
SELECT * FROM TTT PIVOT (SUM(Money) FOR Address in (�Ϻ�,����,����)) AS T
SELECT DISTINCT ADDRESS FROM TTT

SELECT EName,
		MAX(CASE WHEN Address = N'�Ϻ�' THEN Money END) AS N'�Ϻ�',
		MAX(CASE WHEN Address = N'����' THEN Money END) AS N'����',
		MAX(CASE WHEN Address = N'����' THEN Money END) AS N'����'
FROM TTT
GROUP BY EName

DECLARE @SL NVARCHAR(MAX)
DECLARE @S NVARCHAR(MAX)
SELECT @S = ISNULL(@S + ',', '') + QUOTENAME(A.Address) FROM (SELECT DISTINCT ADDRESS FROM TTT) AS A
SET @SL = 'SELECT * FROM TTT PIVOT (MAX(Money) FOR Address in ('+@S+')) AS C'
EXEC (@SL)

SELECT ISNULL(ADDRESS + ',','') FROM TTT
SELECT QUOTENAME(Address) FROM TTT
SELECT ISNULL(ADDRESS + ',','') + QUOTENAME(Address) FROM TTT

SELECT [����һ],[���ڶ�],[������],[������],[������],[������],[������]
--������PIVOT��������ѡ����ת�к�Ľ�������У���������á�*����ʾѡ�������У�Ҳ����ֻѡ��ĳЩ��(Ҳ����ĳЩ��)
FROM WEEK_INCOME 
--������PIVOT�ڶ�����(׼��ԭʼ�Ĳ�ѯ�������ΪPIVOT�Ƕ�һ��ԭʼ�Ĳ�ѯ���������ת�������������Ȳ�ѯһ�����������)���������һ��select�Ӳ�ѯ����Ϊ�Ӳ�ѯʱ��Ҫָ�������������﷨����
PIVOT
(
    SUM(INCOME) for [week] in([����һ],[���ڶ�],[������],[������],[������],[������],[������])
	--������PIVOT��һ���裬Ҳ�Ǻ��ĵĵط���������ת�в������ۺϺ���SUM��ʾ����Ҫ��������ת������е�ֵ�����ܺ�(sum)������ƽ��(avg)����min,max�ȵȡ�
	--�������week_income�������������ݲ�����week���ǡ�����һ��������һ����income��1000,��һ��income��500����ô������ʹ��sum����ת�к�����һ������е�ֵ��Ȼ��1500�ˡ�
	--�����for [week] in([����һ],[���ڶ�]...)�� for [week]����˵��week�е�ֵ�ֱ�ת����һ�����У�Ҳ���ǡ���ֵ���С���
	--������Ҫת�����е�ֵ�п����кܶ࣬����ֻ��ȡ���м���ֵת�����У���ô����ȡ�أ�
	--������in�����ˣ������Ҵ˿�ֻ�뿴�����յ����룬��in�����ֻд������һ�����������塱��ע�⣬in������ԭ��week�е�ֵ,"��ֵ����"����
	--�ܵ���˵��SUM(INCOME) for [week] in([����һ],[���ڶ�],[������],[������],[������],[������],[������])������˼���ֱ�����������˵������[week]ֵΪ"����һ","���ڶ�","������","������","������","������","������"�ֱ�ת�����У���Щ�е�ֵȡincome���ܺ͡�
)TBL--����һ��Ҫд