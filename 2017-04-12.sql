USE test
DROP TABLE TE
CREATE table TE(
	ID INT IDENTITY(1,1),
	SAL INT
)


SELECT * FROM TE 
INSERT INTO TE(SAL)	VALUES(1000)
INSERT INTO TE(SAL)	VALUES(2000)
INSERT INTO TE(SAL)	VALUES(3000)
INSERT INTO TE(SAL)	VALUES(4000)
INSERT INTO TE(SAL)	VALUES(5000)
INSERT INTO TE(SAL)	VALUES(6000)


SELECT SAL,LAG(SAL,1,0) OVER(ORDER BY SAL),LAG(SAL,1,0) OVER(ORDER BY SAL) + SAL FROM TE
SELECT SAL,(SELECT SUM(SAL) FROM TE T1 WHERE T1.ID <= T2.ID ) FROM TE T2

create table User_Salary (UserName nvarchar(200), Month nvarchar(20), Salary int)     
go         
insert into User_Salary (UserName,Month,Salary ) values('AAA','2010/12',1000)     
insert into User_Salary (UserName,Month,Salary ) values('AAA','2011/01',2000)     
insert into User_Salary (UserName,Month,Salary ) values('AAA','2011/02',3000)     
insert into User_Salary (UserName,Month,Salary ) values('BBB','2010/12',2000)     
insert into User_Salary (UserName,Month,Salary ) values('BBB','2011/01',2500)    
insert into User_Salary (UserName,Month,Salary ) values('BBB','2011/02',2500)    
go    
select UserName,Month,Salary,    
    Cummulation=(    
        select SUM(Salary)     
        from     
            User_Salary i    
        where     
            i.UserName=o.UserName and i.Month<=o.Month    
        )    
from User_Salary o    
order by 1,2    
go    
drop table User_Salary 