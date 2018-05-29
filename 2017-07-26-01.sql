Set NoCount On Set Ansi_Warnings Off
------------------------------------------------------------------
 create table #Temp99(
  Finteridbom int null,----BOM内码
  Fbomnumber varchar(50),----BOM编号
  Fcpitemid int null,---成品内码
  Fcpdm varchar(50),----成品代码
  Fcpname varchar(100),----产品名称
  Fcpgg varchar(100),----产品规格
  Fcpunit varchar(100),---产品单位
  Fcpqty decimal(28,8),---产品数量

  Fbomjb varchar(30),---BOM级别
  Foneitemid int null,---1级别
  Fonebomcc int null,---BOM1层
  Ftwoitemid int null,---2级别
  Ftwobomcc int null,---BOM2层
  Fthreeitemid int null,---3级别
  Fthreebomcc int null,---BOM3层
  Ffouritemid int null,---4级别
  Ffourbomcc int null,---BOM4层
  Ffiveitemid int null,---5级别
  Ffivebomcc int null,---BOM5层
  Fsixitemid int null,---6级别
  Fsixbomcc int null,---BOM6层
  Fsevenitemid int null,---7级别
  Fsevenbomcc int null,---BOM7层
  Feightitemid int null,---8级别
  Feightbomcc int null,---BOM8层
  Fnineitemid int null,---9级别
  Fninebomcc int null,---BOM9层
  Ftenitemid int null,---10级别
  Ftenbomcc int null,---BOM10层
  
  Fclitemid int null,---材料内码
  FcLdm varchar(50),----材料代码
  Fclname varchar(100),----材料名称
  Fclgg varchar(100),----材料规格
  Fclunit varchar(100),---材料单位
  Fclqty decimal(28,8),---材料数量
  Fclsx int null, ----材料属性外购自制委外
  Fclsxname varchar(100)----属性名称
  )
 ------------------------------------------------------------插入第一层开始
 create table #Temp1(
  Finteridbom int null,----BOM内码
  Fbomnumber varchar(50),----BOM编号
  Fcpitemid int null,---成品内码
  Fcpdm varchar(50),----成品代码
  Fcpname varchar(100),----产品名称
  Fcpgg varchar(100),----产品规格
  Fcpunit varchar(100),---产品单位
  Fcpqty decimal(28,8),---产品数量

  Fbomjb varchar(30),---BOM级别
  Foneitemid int null,---1级别
  Fonebomcc int null,---BOM1层
  Ftwoitemid int null,---2级别
  Ftwobomcc int null,---BOM2层
  Fthreeitemid int null,---3级别
  Fthreebomcc int null,---BOM3层
  Ffouritemid int null,---4级别
  Ffourbomcc int null,---BOM4层
  Ffiveitemid int null,---5级别
  Ffivebomcc int null,---BOM5层
  Fsixitemid int null,---6级别
  Fsixbomcc int null,---BOM6层
  Fsevenitemid int null,---7级别
  Fsevenbomcc int null,---BOM7层
  Feightitemid int null,---8级别
  Feightbomcc int null,---BOM8层
  Fnineitemid int null,---9级别
  Fninebomcc int null,---BOM9层
  Ftenitemid int null,---10级别
  Ftenbomcc int null,---BOM10层
  
  Fclitemid int null,---材料内码
  FcLdm varchar(50),----材料代码
  Fclname varchar(100),----材料名称
  Fclgg varchar(100),----材料规格
  Fclunit varchar(100),---材料单位
  Fclqty decimal(28,8),---材料数量
  Fclsx int null, ----材料属性外购自制委外
  Fclsxname varchar(100)----属性名称
  )
  insert into #Temp1
  select a.FInterID,a.FBOMNumber,a.FItemID,c.FNumber,c.FName,c.FModel,d.FName,a.FQty,
  '1',b.FItemID,1,b.FItemID,1,b.FItemID,1,b.FItemID,1,b.FItemID,1,b.FItemID,1,b.FItemID,1,b.FItemID,1,b.FItemID,1,b.FItemID,1,
  b.FItemID,e.FNumber,e.FName,e.FModel,f.FName,b.FQty,e.FErpClsID,g.FName
  from ICBOM a inner join ICBOMChild b on a.FInterID=b.FInterID
  inner join t_ICItem c on a.FItemID=c.FItemID
  inner join t_MeasureUnit d on a.FUnitID=d.FMeasureUnitID
  inner join t_ICItem e on e.FItemID=b.FItemID
  inner join t_MeasureUnit f on f.FMeasureUnitID=b.FUnitID
  inner join t_SubMessage g on e.FErpClsID=g.FInterID
  where a.FUseStatus=1072 and c.FNumber='IVT0985'--and c.FNumber<='IVT0985'
                                                               
  insert into #Temp99
  select * from #Temp1 
 ------------------------------------------------------------------------------ 插入第一层结束
  --------------------------------------------------------------------------------插入第二层开始
  create table #Temp2(
 Finteridbom int null,----BOM内码
  Fbomnumber varchar(50),----BOM编号
  Fcpitemid int null,---成品内码
  Fcpdm varchar(50),----成品代码
  Fcpname varchar(100),----产品名称
  Fcpgg varchar(100),----产品规格
  Fcpunit varchar(100),---产品单位
  Fcpqty decimal(28,8),---产品数量

  Fbomjb varchar(30),---BOM级别
  Foneitemid int null,---1级别
  Fonebomcc int null,---BOM1层
  Ftwoitemid int null,---2级别
  Ftwobomcc int null,---BOM2层
  Fthreeitemid int null,---3级别
  Fthreebomcc int null,---BOM3层
  Ffouritemid int null,---4级别
  Ffourbomcc int null,---BOM4层
  Ffiveitemid int null,---5级别
  Ffivebomcc int null,---BOM5层
  Fsixitemid int null,---6级别
  Fsixbomcc int null,---BOM6层
  Fsevenitemid int null,---7级别
  Fsevenbomcc int null,---BOM7层
  Feightitemid int null,---8级别
  Feightbomcc int null,---BOM8层
  Fnineitemid int null,---9级别
  Fninebomcc int null,---BOM9层
  Ftenitemid int null,---10级别
  Ftenbomcc int null,---BOM10层
  
  Fclitemid int null,---材料内码
  FcLdm varchar(50),----材料代码
  Fclname varchar(100),----材料名称
  Fclgg varchar(100),----材料规格
  Fclunit varchar(100),---材料单位
  Fclqty decimal(28,8),---材料数量
  Fclsx int null, ----材料属性外购自制委外
  Fclsxname varchar(100)----属性名称
  )
  insert into #Temp2
  select a.Finteridbom,a.Fbomnumber,a.Fcpitemid,a.Fcpdm,a.Fcpname,a.Fcpgg,a.Fcpunit,a.Fcpqty,
  '.2',a.Foneitemid,2,c.FItemID,1,c.FItemID,1,c.FItemID,1,c.FItemID,1,c.FItemID,1,c.FItemID,1,c.FItemID,1,c.FItemID,1,c.FItemID,1,
  c.FItemID,d.FNumber,d.FName,d.FModel,e.FName,(a.Fclqty/b.FQty)*c.FQty,d.FErpClsID,f.FName
  from (select * from #Temp1 where Fclitemid in(select fitemid from ICBOM ) and Fclsx<>1) a inner join ICBOM b on a.Fclitemid=b.FItemID
  inner join ICBOMChild c on c.FInterID=b.FInterID
  inner join t_ICItem d on c.FItemID=d.FItemID
  inner join t_MeasureUnit e on e.FMeasureUnitID=c.FUnitID
  inner join t_SubMessage f on d.FErpClsID=f.FInterID
  where b.FUseStatus=1072 
  
  insert into #Temp99
  select * from #Temp2 
  ---------------------------------------------------------------------------插入第二层结束
  -------------------------------------------------------------------------插入第三层开始
 create table #Temp3(
  Finteridbom int null,----BOM内码
  Fbomnumber varchar(50),----BOM编号
  Fcpitemid int null,---成品内码
  Fcpdm varchar(50),----成品代码
  Fcpname varchar(100),----产品名称
  Fcpgg varchar(100),----产品规格
  Fcpunit varchar(100),---产品单位
  Fcpqty decimal(28,8),---产品数量

  Fbomjb varchar(30),---BOM级别
  Foneitemid int null,---1级别
  Fonebomcc int null,---BOM1层
  Ftwoitemid int null,---2级别
  Ftwobomcc int null,---BOM2层
  Fthreeitemid int null,---3级别
  Fthreebomcc int null,---BOM3层
  Ffouritemid int null,---4级别
  Ffourbomcc int null,---BOM4层
  Ffiveitemid int null,---5级别
  Ffivebomcc int null,---BOM5层
  Fsixitemid int null,---6级别
  Fsixbomcc int null,---BOM6层
  Fsevenitemid int null,---7级别
  Fsevenbomcc int null,---BOM7层
  Feightitemid int null,---8级别
  Feightbomcc int null,---BOM8层
  Fnineitemid int null,---9级别
  Fninebomcc int null,---BOM9层
  Ftenitemid int null,---10级别
  Ftenbomcc int null,---BOM10层
  
  Fclitemid int null,---材料内码
  FcLdm varchar(50),----材料代码
  Fclname varchar(100),----材料名称
  Fclgg varchar(100),----材料规格
  Fclunit varchar(100),---材料单位
  Fclqty decimal(28,8),---材料数量
  Fclsx int null, ----材料属性外购自制委外
  Fclsxname varchar(100)----属性名称
  )
  insert into #Temp3
  select a.Finteridbom,a.Fbomnumber,a.Fcpitemid,a.Fcpdm,a.Fcpname,a.Fcpgg,a.Fcpunit,a.Fcpqty,
  '..3',a.Foneitemid,2,a.Ftwoitemid,2,c.FItemID,1,c.FItemID,1,c.FItemID,1,c.FItemID,1,c.FItemID,1,c.FItemID,1,c.FItemID,1,c.FItemID,1,
  c.FItemID,d.FNumber,d.FName,d.FModel,e.FName,(a.Fclqty/b.FQty)*c.FQty,d.FErpClsID,f.FName
  from (select * from #Temp2 where Fclitemid in(select fitemid from ICBOM ) and Fclsx<>1) a inner join ICBOM b on a.Fclitemid=b.FItemID
  inner join ICBOMChild c on c.FInterID=b.FInterID
  inner join t_ICItem d on c.FItemID=d.FItemID
  inner join t_MeasureUnit e on e.FMeasureUnitID=c.FUnitID
  inner join t_SubMessage f on d.FErpClsID=f.FInterID
  where b.FUseStatus=1072 
  
  insert into #Temp99
  select * from #Temp3
-------------------------------------------------------------------------插入第三层结束
-------------------------------------------------------------------------插入第四层开始
  create table #Temp4(
  Finteridbom int null,----BOM内码
  Fbomnumber varchar(50),----BOM编号
  Fcpitemid int null,---成品内码
  Fcpdm varchar(50),----成品代码
  Fcpname varchar(100),----产品名称
  Fcpgg varchar(100),----产品规格
  Fcpunit varchar(100),---产品单位
  Fcpqty decimal(28,8),---产品数量

  Fbomjb varchar(30),---BOM级别
  Foneitemid int null,---1级别
  Fonebomcc int null,---BOM1层
  Ftwoitemid int null,---2级别
  Ftwobomcc int null,---BOM2层
  Fthreeitemid int null,---3级别
  Fthreebomcc int null,---BOM3层
  Ffouritemid int null,---4级别
  Ffourbomcc int null,---BOM4层
  Ffiveitemid int null,---5级别
  Ffivebomcc int null,---BOM5层
  Fsixitemid int null,---6级别
  Fsixbomcc int null,---BOM6层
  Fsevenitemid int null,---7级别
  Fsevenbomcc int null,---BOM7层
  Feightitemid int null,---8级别
  Feightbomcc int null,---BOM8层
  Fnineitemid int null,---9级别
  Fninebomcc int null,---BOM9层
  Ftenitemid int null,---10级别
  Ftenbomcc int null,---BOM10层
  
  Fclitemid int null,---材料内码
  FcLdm varchar(50),----材料代码
  Fclname varchar(100),----材料名称
  Fclgg varchar(100),----材料规格
  Fclunit varchar(100),---材料单位
  Fclqty decimal(28,8),---材料数量
  Fclsx int null, ----材料属性外购自制委外
  Fclsxname varchar(100)----属性名称
  )
  insert into #Temp4
  select a.Finteridbom,a.Fbomnumber,a.Fcpitemid,a.Fcpdm,a.Fcpname,a.Fcpgg,a.Fcpunit,a.Fcpqty,
  '...4',a.Foneitemid,2,a.Ftwoitemid,2,a.Fthreeitemid,2,c.FItemID,1,c.FItemID,1,c.FItemID,1,c.FItemID,1,c.FItemID,1,c.FItemID,1,c.FItemID,1,
  c.FItemID,d.FNumber,d.FName,d.FModel,e.FName,(a.Fclqty/b.FQty)*c.FQty,d.FErpClsID,f.FName
  from (select * from #Temp3 where Fclitemid in(select fitemid from ICBOM ) and Fclsx<>1) a inner join ICBOM b on a.Fclitemid=b.FItemID
  inner join ICBOMChild c on c.FInterID=b.FInterID
  inner join t_ICItem d on c.FItemID=d.FItemID
  inner join t_MeasureUnit e on e.FMeasureUnitID=c.FUnitID
  inner join t_SubMessage f on d.FErpClsID=f.FInterID
  where b.FUseStatus=1072 
  
  insert into #Temp99
  select * from #Temp4
  -------------------------------------------------------------------------插入第四层结束
 -------------------------------------------------------------------------插入第五层开始
  create table #Temp5(
  Finteridbom int null,----BOM内码
  Fbomnumber varchar(50),----BOM编号
  Fcpitemid int null,---成品内码
  Fcpdm varchar(50),----成品代码
  Fcpname varchar(100),----产品名称
  Fcpgg varchar(100),----产品规格
  Fcpunit varchar(100),---产品单位
  Fcpqty decimal(28,8),---产品数量

  Fbomjb varchar(30),---BOM级别
  Foneitemid int null,---1级别
  Fonebomcc int null,---BOM1层
  Ftwoitemid int null,---2级别
  Ftwobomcc int null,---BOM2层
  Fthreeitemid int null,---3级别
  Fthreebomcc int null,---BOM3层
  Ffouritemid int null,---4级别
  Ffourbomcc int null,---BOM4层
  Ffiveitemid int null,---5级别
  Ffivebomcc int null,---BOM5层
  Fsixitemid int null,---6级别
  Fsixbomcc int null,---BOM6层
  Fsevenitemid int null,---7级别
  Fsevenbomcc int null,---BOM7层
  Feightitemid int null,---8级别
  Feightbomcc int null,---BOM8层
  Fnineitemid int null,---9级别
  Fninebomcc int null,---BOM9层
  Ftenitemid int null,---10级别
  Ftenbomcc int null,---BOM10层
  
  Fclitemid int null,---材料内码
  FcLdm varchar(50),----材料代码
  Fclname varchar(100),----材料名称
  Fclgg varchar(100),----材料规格
  Fclunit varchar(100),---材料单位
  Fclqty decimal(28,8),---材料数量
  Fclsx int null, ----材料属性外购自制委外
  Fclsxname varchar(100)----属性名称
  )
  insert into #Temp5
  select a.Finteridbom,a.Fbomnumber,a.Fcpitemid,a.Fcpdm,a.Fcpname,a.Fcpgg,a.Fcpunit,a.Fcpqty,
  '....5',a.Foneitemid,2,a.Ftwoitemid,2,a.Fthreeitemid,2,a.Ffouritemid,2,c.FItemID,1,c.FItemID,1,c.FItemID,1,c.FItemID,1,c.FItemID,1,c.FItemID,1,
  c.FItemID,d.FNumber,d.FName,d.FModel,e.FName,(a.Fclqty/b.FQty)*c.FQty,d.FErpClsID,f.FName
  from (select * from #Temp4 where Fclitemid in(select fitemid from ICBOM ) and Fclsx<>1) a inner join ICBOM b on a.Fclitemid=b.FItemID
  inner join ICBOMChild c on c.FInterID=b.FInterID
  inner join t_ICItem d on c.FItemID=d.FItemID
  inner join t_MeasureUnit e on e.FMeasureUnitID=c.FUnitID
  inner join t_SubMessage f on d.FErpClsID=f.FInterID
  where b.FUseStatus=1072 
  
  insert into #Temp99
  select * from #Temp5
  -------------------------------------------------------------------------插入第五层结束
-------------------------------------------------------------------------插入第六层开始
create table #Temp6(
  Finteridbom int null,----BOM内码
  Fbomnumber varchar(50),----BOM编号
  Fcpitemid int null,---成品内码
  Fcpdm varchar(50),----成品代码
  Fcpname varchar(100),----产品名称
  Fcpgg varchar(100),----产品规格
  Fcpunit varchar(100),---产品单位
  Fcpqty decimal(28,8),---产品数量

  Fbomjb varchar(30),---BOM级别
  Foneitemid int null,---1级别
  Fonebomcc int null,---BOM1层
  Ftwoitemid int null,---2级别
  Ftwobomcc int null,---BOM2层
  Fthreeitemid int null,---3级别
  Fthreebomcc int null,---BOM3层
  Ffouritemid int null,---4级别
  Ffourbomcc int null,---BOM4层
  Ffiveitemid int null,---5级别
  Ffivebomcc int null,---BOM5层
  Fsixitemid int null,---6级别
  Fsixbomcc int null,---BOM6层
  Fsevenitemid int null,---7级别
  Fsevenbomcc int null,---BOM7层
  Feightitemid int null,---8级别
  Feightbomcc int null,---BOM8层
  Fnineitemid int null,---9级别
  Fninebomcc int null,---BOM9层
  Ftenitemid int null,---10级别
  Ftenbomcc int null,---BOM10层
  
  Fclitemid int null,---材料内码
  FcLdm varchar(50),----材料代码
  Fclname varchar(100),----材料名称
  Fclgg varchar(100),----材料规格
  Fclunit varchar(100),---材料单位
  Fclqty decimal(28,8),---材料数量
  Fclsx int null, ----材料属性外购自制委外
  Fclsxname varchar(100)----属性名称
  )
  insert into #Temp6
  select a.Finteridbom,a.Fbomnumber,a.Fcpitemid,a.Fcpdm,a.Fcpname,a.Fcpgg,a.Fcpunit,a.Fcpqty,
  '.....6',a.Foneitemid,2,a.Ftwoitemid,2,a.Fthreeitemid,2,a.Ffouritemid,2,a.Ffiveitemid,2,c.FItemID,1,c.FItemID,1,c.FItemID,1,c.FItemID,1,c.FItemID,1,
  c.FItemID,d.FNumber,d.FName,d.FModel,e.FName,(a.Fclqty/b.FQty)*c.FQty,d.FErpClsID,f.FName
  from (select * from #Temp5 where Fclitemid in(select fitemid from ICBOM ) and Fclsx<>1) a inner join ICBOM b on a.Fclitemid=b.FItemID
  inner join ICBOMChild c on c.FInterID=b.FInterID
  inner join t_ICItem d on c.FItemID=d.FItemID
  inner join t_MeasureUnit e on e.FMeasureUnitID=c.FUnitID
  inner join t_SubMessage f on d.FErpClsID=f.FInterID
  where b.FUseStatus=1072 
  
  insert into #Temp99
  select * from #Temp6
-------------------------------------------------------------------------插入第六层结束
-------------------------------------------------------------------------插入第七层开始
create table #Temp7(
  Finteridbom int null,----BOM内码
  Fbomnumber varchar(50),----BOM编号
  Fcpitemid int null,---成品内码
  Fcpdm varchar(50),----成品代码
  Fcpname varchar(100),----产品名称
  Fcpgg varchar(100),----产品规格
  Fcpunit varchar(100),---产品单位
  Fcpqty decimal(28,8),---产品数量

  Fbomjb varchar(30),---BOM级别
  Foneitemid int null,---1级别
  Fonebomcc int null,---BOM1层
  Ftwoitemid int null,---2级别
  Ftwobomcc int null,---BOM2层
  Fthreeitemid int null,---3级别
  Fthreebomcc int null,---BOM3层
  Ffouritemid int null,---4级别
  Ffourbomcc int null,---BOM4层
  Ffiveitemid int null,---5级别
  Ffivebomcc int null,---BOM5层
  Fsixitemid int null,---6级别
  Fsixbomcc int null,---BOM6层
  Fsevenitemid int null,---7级别
  Fsevenbomcc int null,---BOM7层
  Feightitemid int null,---8级别
  Feightbomcc int null,---BOM8层
  Fnineitemid int null,---9级别
  Fninebomcc int null,---BOM9层
  Ftenitemid int null,---10级别
  Ftenbomcc int null,---BOM10层
  
  Fclitemid int null,---材料内码
  FcLdm varchar(50),----材料代码
  Fclname varchar(100),----材料名称
  Fclgg varchar(100),----材料规格
  Fclunit varchar(100),---材料单位
  Fclqty decimal(28,8),---材料数量
  Fclsx int null, ----材料属性外购自制委外
  Fclsxname varchar(100)----属性名称
  )
  insert into #Temp7
  select a.Finteridbom,a.Fbomnumber,a.Fcpitemid,a.Fcpdm,a.Fcpname,a.Fcpgg,a.Fcpunit,a.Fcpqty,
  '......7',a.Foneitemid,2,a.Ftwoitemid,2,a.Fthreeitemid,2,a.Ffouritemid,2,a.Ffiveitemid,2,a.Fsixitemid,2,c.FItemID,1,c.FItemID,1,c.FItemID,1,c.FItemID,1,
  c.FItemID,d.FNumber,d.FName,d.FModel,e.FName,(a.Fclqty/b.FQty)*c.FQty,d.FErpClsID,f.FName
  from (select * from #Temp6 where Fclitemid in(select fitemid from ICBOM ) and Fclsx<>1) a inner join ICBOM b on a.Fclitemid=b.FItemID
  inner join ICBOMChild c on c.FInterID=b.FInterID
  inner join t_ICItem d on c.FItemID=d.FItemID
  inner join t_MeasureUnit e on e.FMeasureUnitID=c.FUnitID
  inner join t_SubMessage f on d.FErpClsID=f.FInterID
  where b.FUseStatus=1072 
  
  insert into #Temp99
  select * from #Temp7
-------------------------------------------------------------------------插入第七层结束
-------------------------------------------------------------------------插入第八层开始
create table #Temp8(
  Finteridbom int null,----BOM内码
  Fbomnumber varchar(50),----BOM编号
  Fcpitemid int null,---成品内码
  Fcpdm varchar(50),----成品代码
  Fcpname varchar(100),----产品名称
  Fcpgg varchar(100),----产品规格
  Fcpunit varchar(100),---产品单位
  Fcpqty decimal(28,8),---产品数量

  Fbomjb varchar(30),---BOM级别
  Foneitemid int null,---1级别
  Fonebomcc int null,---BOM1层
  Ftwoitemid int null,---2级别
  Ftwobomcc int null,---BOM2层
  Fthreeitemid int null,---3级别
  Fthreebomcc int null,---BOM3层
  Ffouritemid int null,---4级别
  Ffourbomcc int null,---BOM4层
  Ffiveitemid int null,---5级别
  Ffivebomcc int null,---BOM5层
  Fsixitemid int null,---6级别
  Fsixbomcc int null,---BOM6层
  Fsevenitemid int null,---7级别
  Fsevenbomcc int null,---BOM7层
  Feightitemid int null,---8级别
  Feightbomcc int null,---BOM8层
  Fnineitemid int null,---9级别
  Fninebomcc int null,---BOM9层
  Ftenitemid int null,---10级别
  Ftenbomcc int null,---BOM10层
  
  Fclitemid int null,---材料内码
  FcLdm varchar(50),----材料代码
  Fclname varchar(100),----材料名称
  Fclgg varchar(100),----材料规格
  Fclunit varchar(100),---材料单位
  Fclqty decimal(28,8),---材料数量
  Fclsx int null, ----材料属性外购自制委外
  Fclsxname varchar(100)----属性名称
  )
  insert into #Temp8
  select a.Finteridbom,a.Fbomnumber,a.Fcpitemid,a.Fcpdm,a.Fcpname,a.Fcpgg,a.Fcpunit,a.Fcpqty,
  '.......8',a.Foneitemid,2,a.Ftwoitemid,2,a.Fthreeitemid,2,a.Ffouritemid,2,a.Ffiveitemid,2,a.Fsixitemid,2,a.Fsevenitemid,2,c.FItemID,1,c.FItemID,1,c.FItemID,1,
  c.FItemID,d.FNumber,d.FName,d.FModel,e.FName,(a.Fclqty/b.FQty)*c.FQty,d.FErpClsID,f.FName
  from (select * from #Temp7 where Fclitemid in(select fitemid from ICBOM ) and Fclsx<>1) a inner join ICBOM b on a.Fclitemid=b.FItemID
  inner join ICBOMChild c on c.FInterID=b.FInterID
  inner join t_ICItem d on c.FItemID=d.FItemID
  inner join t_MeasureUnit e on e.FMeasureUnitID=c.FUnitID
  inner join t_SubMessage f on d.FErpClsID=f.FInterID
  where b.FUseStatus=1072 
  
  insert into #Temp99
  select * from #Temp8
-------------------------------------------------------------------------插入第八层结束
-------------------------------------------------------------------------插入第九层开始
create table #Temp9(
  Finteridbom int null,----BOM内码
  Fbomnumber varchar(50),----BOM编号
  Fcpitemid int null,---成品内码
  Fcpdm varchar(50),----成品代码
  Fcpname varchar(100),----产品名称
  Fcpgg varchar(100),----产品规格
  Fcpunit varchar(100),---产品单位
  Fcpqty decimal(28,8),---产品数量

  Fbomjb varchar(30),---BOM级别
  Foneitemid int null,---1级别
  Fonebomcc int null,---BOM1层
  Ftwoitemid int null,---2级别
  Ftwobomcc int null,---BOM2层
  Fthreeitemid int null,---3级别
  Fthreebomcc int null,---BOM3层
  Ffouritemid int null,---4级别
  Ffourbomcc int null,---BOM4层
  Ffiveitemid int null,---5级别
  Ffivebomcc int null,---BOM5层
  Fsixitemid int null,---6级别
  Fsixbomcc int null,---BOM6层
  Fsevenitemid int null,---7级别
  Fsevenbomcc int null,---BOM7层
  Feightitemid int null,---8级别
  Feightbomcc int null,---BOM8层
  Fnineitemid int null,---9级别
  Fninebomcc int null,---BOM9层
  Ftenitemid int null,---10级别
  Ftenbomcc int null,---BOM10层
  
  Fclitemid int null,---材料内码
  FcLdm varchar(50),----材料代码
  Fclname varchar(100),----材料名称
  Fclgg varchar(100),----材料规格
  Fclunit varchar(100),---材料单位
  Fclqty decimal(28,8),---材料数量
  Fclsx int null, ----材料属性外购自制委外
  Fclsxname varchar(100)----属性名称
  )
  insert into #Temp9
  select a.Finteridbom,a.Fbomnumber,a.Fcpitemid,a.Fcpdm,a.Fcpname,a.Fcpgg,a.Fcpunit,a.Fcpqty,
  '........9',a.Foneitemid,2,a.Ftwoitemid,2,a.Fthreeitemid,2,a.Ffouritemid,2,a.Ffiveitemid,2,a.Fsixitemid,2,a.Fsevenitemid,2,a.Feightitemid,2,c.FItemID,1,c.FItemID,1,
  c.FItemID,d.FNumber,d.FName,d.FModel,e.FName,(a.Fclqty/b.FQty)*c.FQty,d.FErpClsID,f.FName
  from (select * from #Temp8 where Fclitemid in(select fitemid from ICBOM ) and Fclsx<>1) a inner join ICBOM b on a.Fclitemid=b.FItemID
  inner join ICBOMChild c on c.FInterID=b.FInterID
  inner join t_ICItem d on c.FItemID=d.FItemID
  inner join t_MeasureUnit e on e.FMeasureUnitID=c.FUnitID
  inner join t_SubMessage f on d.FErpClsID=f.FInterID
  where b.FUseStatus=1072 
  
  insert into #Temp99
  select * from #Temp9
-------------------------------------------------------------------------插入第九层结束
-------------------------------------------------------------------------插入第十层开始
create table #Temp10(
  Finteridbom int null,----BOM内码
  Fbomnumber varchar(50),----BOM编号
  Fcpitemid int null,---成品内码
  Fcpdm varchar(50),----成品代码
  Fcpname varchar(100),----产品名称
  Fcpgg varchar(100),----产品规格
  Fcpunit varchar(100),---产品单位
  Fcpqty decimal(28,8),---产品数量

  Fbomjb varchar(30),---BOM级别
  Foneitemid int null,---1级别
  Fonebomcc int null,---BOM1层
  Ftwoitemid int null,---2级别
  Ftwobomcc int null,---BOM2层
  Fthreeitemid int null,---3级别
  Fthreebomcc int null,---BOM3层
  Ffouritemid int null,---4级别
  Ffourbomcc int null,---BOM4层
  Ffiveitemid int null,---5级别
  Ffivebomcc int null,---BOM5层
  Fsixitemid int null,---6级别
  Fsixbomcc int null,---BOM6层
  Fsevenitemid int null,---7级别
  Fsevenbomcc int null,---BOM7层
  Feightitemid int null,---8级别
  Feightbomcc int null,---BOM8层
  Fnineitemid int null,---9级别
  Fninebomcc int null,---BOM9层
  Ftenitemid int null,---10级别
  Ftenbomcc int null,---BOM10层
  
  Fclitemid int null,---材料内码
  FcLdm varchar(50),----材料代码
  Fclname varchar(100),----材料名称
  Fclgg varchar(100),----材料规格
  Fclunit varchar(100),---材料单位
  Fclqty decimal(28,8),---材料数量
  Fclsx int null, ----材料属性外购自制委外
  Fclsxname varchar(100)----属性名称
  )
  insert into #Temp10
  select a.Finteridbom,a.Fbomnumber,a.Fcpitemid,a.Fcpdm,a.Fcpname,a.Fcpgg,a.Fcpunit,a.Fcpqty,
  '.........10',a.Foneitemid,2,a.Ftwoitemid,2,a.Fthreeitemid,2,a.Ffouritemid,2,a.Ffiveitemid,2,a.Fsixitemid,2,a.Fsevenitemid,2,a.Feightitemid,2,a.Fnineitemid,2,c.FItemID,1,
  c.FItemID,d.FNumber,d.FName,d.FModel,e.FName,(a.Fclqty/b.FQty)*c.FQty,d.FErpClsID,f.FName
  from (select * from #Temp9 where Fclitemid in(select fitemid from ICBOM ) and Fclsx<>1) a inner join ICBOM b on a.Fclitemid=b.FItemID
  inner join ICBOMChild c on c.FInterID=b.FInterID
  inner join t_ICItem d on c.FItemID=d.FItemID
  inner join t_MeasureUnit e on e.FMeasureUnitID=c.FUnitID
  inner join t_SubMessage f on d.FErpClsID=f.FInterID
  where b.FUseStatus=1072 
  
  insert into #Temp99
  select * from #Temp10
-------------------------------------------------------------------------插入第十层结束

-------------------------------------------------------------------------插入成本BOM开始
select Fbomnumber as 'BOM编号',Fcpdm as '产品代码',Fcpname as '产品名称',Fcpgg as '产品规格',Fcpunit as '产品单位',Fcpqty as '产品数量',
Fbomjb as '层次',FcLdm as '材料代码',Fclname as '材料名称',Fclgg as '材料规格',Fclunit as '材料单位',Fclqty as '数量',Fclsxname as '物料属性'
from #Temp99 order by Fcpitemid,Foneitemid,Fonebomcc,Ftwoitemid,Ftwobomcc,Fthreeitemid,Fthreebomcc,Ffouritemid,Ffourbomcc,Ffiveitemid,Ffivebomcc,Fsixitemid,Fsixbomcc,Fsevenitemid,Fsevenbomcc,Feightitemid,Feightbomcc,Fnineitemid,Fninebomcc,Ftenitemid,Ftenbomcc

   --drop table #Temp1
   --drop table #Temp2
   --drop table #Temp3
   --drop table #Temp4
   --drop table #Temp5
   --drop table #Temp6
   --drop table #Temp7
   --drop table #Temp8
   --drop table #Temp9
   --drop table #Temp10
   --drop table #Temp99

   SELECT * FROM #Temp99