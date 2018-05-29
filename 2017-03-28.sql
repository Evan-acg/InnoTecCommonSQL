CREATE TABLE TTT(
	EName VARCHAR(10),
	Address VARCHAR(100),
	Money INt
)
SELECT * FROM TTT
INSERT INTO TTT(EName, Address,Money) VALUES('张三','上海',100)
INSERT INTO TTT(EName, Address,Money) VALUES('张三','北京',200)
INSERT INTO TTT(EName, Address,Money) VALUES('张三','广州',300)

SELECT * FROM TTT PIVOT(MAX(Money) FOR Address IN (SELECT DISTINCT ADDRESS FROM TTT)) T1
SELECT * FROM TTT PIVOT (SUM(Money) FOR Address in (上海,北京,广州)) AS T
SELECT DISTINCT ADDRESS FROM TTT

SELECT EName,
		MAX(CASE WHEN Address = N'上海' THEN Money END) AS N'上海',
		MAX(CASE WHEN Address = N'北京' THEN Money END) AS N'北京',
		MAX(CASE WHEN Address = N'广州' THEN Money END) AS N'广州'
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

SELECT [星期一],[星期二],[星期三],[星期四],[星期五],[星期六],[星期日]
--这里是PIVOT第三步（选择行转列后的结果集的列）这里可以用“*”表示选择所有列，也可以只选择某些列(也就是某些天)
FROM WEEK_INCOME 
--这里是PIVOT第二步骤(准备原始的查询结果，因为PIVOT是对一个原始的查询结果集进行转换操作，所以先查询一个结果集出来)这里可以是一个select子查询，但为子查询时候要指定别名，否则语法错误
PIVOT
(
    SUM(INCOME) for [week] in([星期一],[星期二],[星期三],[星期四],[星期五],[星期六],[星期日])
	--这里是PIVOT第一步骤，也是核心的地方，进行行转列操作。聚合函数SUM表示你需要怎样处理转换后的列的值，是总和(sum)，还是平均(avg)还是min,max等等。
	--例如如果week_income表中有两条数据并且其week都是“星期一”，其中一条的income是1000,另一条income是500，那么在这里使用sum，行转列后“星期一”这个列的值当然是1500了。
	--后面的for [week] in([星期一],[星期二]...)中 for [week]就是说将week列的值分别转换成一个个列，也就是“以值变列”。
	--但是需要转换成列的值有可能有很多，我们只想取其中几个值转换成列，那么怎样取呢？
	--就是在in里面了，比如我此刻只想看工作日的收入，在in里面就只写“星期一”至“星期五”（注意，in里面是原来week列的值,"以值变列"）。
	--总的来说，SUM(INCOME) for [week] in([星期一],[星期二],[星期三],[星期四],[星期五],[星期六],[星期日])这句的意思如果直译出来，就是说：将列[week]值为"星期一","星期二","星期三","星期四","星期五","星期六","星期日"分别转换成列，这些列的值取income的总和。
)TBL--别名一定要写