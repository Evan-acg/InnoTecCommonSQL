Set NoCount On Set Ansi_Warnings Off
------------------------------------------------------------------
 create table #Temp99(
  Finteridbom int null,----BOM����
  Fbomnumber varchar(50),----BOM���
  Fcpitemid int null,---��Ʒ����
  Fcpdm varchar(50),----��Ʒ����
  Fcpname varchar(100),----��Ʒ����
  Fcpgg varchar(100),----��Ʒ���
  Fcpunit varchar(100),---��Ʒ��λ
  Fcpqty decimal(28,8),---��Ʒ����

  Fbomjb varchar(30),---BOM����
  Foneitemid int null,---1����
  Fonebomcc int null,---BOM1��
  Ftwoitemid int null,---2����
  Ftwobomcc int null,---BOM2��
  Fthreeitemid int null,---3����
  Fthreebomcc int null,---BOM3��
  Ffouritemid int null,---4����
  Ffourbomcc int null,---BOM4��
  Ffiveitemid int null,---5����
  Ffivebomcc int null,---BOM5��
  Fsixitemid int null,---6����
  Fsixbomcc int null,---BOM6��
  Fsevenitemid int null,---7����
  Fsevenbomcc int null,---BOM7��
  Feightitemid int null,---8����
  Feightbomcc int null,---BOM8��
  Fnineitemid int null,---9����
  Fninebomcc int null,---BOM9��
  Ftenitemid int null,---10����
  Ftenbomcc int null,---BOM10��
  
  Fclitemid int null,---��������
  FcLdm varchar(50),----���ϴ���
  Fclname varchar(100),----��������
  Fclgg varchar(100),----���Ϲ��
  Fclunit varchar(100),---���ϵ�λ
  Fclqty decimal(28,8),---��������
  Fclsx int null, ----���������⹺����ί��
  Fclsxname varchar(100)----��������
  )
 ------------------------------------------------------------�����һ�㿪ʼ
 create table #Temp1(
  Finteridbom int null,----BOM����
  Fbomnumber varchar(50),----BOM���
  Fcpitemid int null,---��Ʒ����
  Fcpdm varchar(50),----��Ʒ����
  Fcpname varchar(100),----��Ʒ����
  Fcpgg varchar(100),----��Ʒ���
  Fcpunit varchar(100),---��Ʒ��λ
  Fcpqty decimal(28,8),---��Ʒ����

  Fbomjb varchar(30),---BOM����
  Foneitemid int null,---1����
  Fonebomcc int null,---BOM1��
  Ftwoitemid int null,---2����
  Ftwobomcc int null,---BOM2��
  Fthreeitemid int null,---3����
  Fthreebomcc int null,---BOM3��
  Ffouritemid int null,---4����
  Ffourbomcc int null,---BOM4��
  Ffiveitemid int null,---5����
  Ffivebomcc int null,---BOM5��
  Fsixitemid int null,---6����
  Fsixbomcc int null,---BOM6��
  Fsevenitemid int null,---7����
  Fsevenbomcc int null,---BOM7��
  Feightitemid int null,---8����
  Feightbomcc int null,---BOM8��
  Fnineitemid int null,---9����
  Fninebomcc int null,---BOM9��
  Ftenitemid int null,---10����
  Ftenbomcc int null,---BOM10��
  
  Fclitemid int null,---��������
  FcLdm varchar(50),----���ϴ���
  Fclname varchar(100),----��������
  Fclgg varchar(100),----���Ϲ��
  Fclunit varchar(100),---���ϵ�λ
  Fclqty decimal(28,8),---��������
  Fclsx int null, ----���������⹺����ί��
  Fclsxname varchar(100)----��������
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
 ------------------------------------------------------------------------------ �����һ�����
  --------------------------------------------------------------------------------����ڶ��㿪ʼ
  create table #Temp2(
 Finteridbom int null,----BOM����
  Fbomnumber varchar(50),----BOM���
  Fcpitemid int null,---��Ʒ����
  Fcpdm varchar(50),----��Ʒ����
  Fcpname varchar(100),----��Ʒ����
  Fcpgg varchar(100),----��Ʒ���
  Fcpunit varchar(100),---��Ʒ��λ
  Fcpqty decimal(28,8),---��Ʒ����

  Fbomjb varchar(30),---BOM����
  Foneitemid int null,---1����
  Fonebomcc int null,---BOM1��
  Ftwoitemid int null,---2����
  Ftwobomcc int null,---BOM2��
  Fthreeitemid int null,---3����
  Fthreebomcc int null,---BOM3��
  Ffouritemid int null,---4����
  Ffourbomcc int null,---BOM4��
  Ffiveitemid int null,---5����
  Ffivebomcc int null,---BOM5��
  Fsixitemid int null,---6����
  Fsixbomcc int null,---BOM6��
  Fsevenitemid int null,---7����
  Fsevenbomcc int null,---BOM7��
  Feightitemid int null,---8����
  Feightbomcc int null,---BOM8��
  Fnineitemid int null,---9����
  Fninebomcc int null,---BOM9��
  Ftenitemid int null,---10����
  Ftenbomcc int null,---BOM10��
  
  Fclitemid int null,---��������
  FcLdm varchar(50),----���ϴ���
  Fclname varchar(100),----��������
  Fclgg varchar(100),----���Ϲ��
  Fclunit varchar(100),---���ϵ�λ
  Fclqty decimal(28,8),---��������
  Fclsx int null, ----���������⹺����ί��
  Fclsxname varchar(100)----��������
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
  ---------------------------------------------------------------------------����ڶ������
  -------------------------------------------------------------------------��������㿪ʼ
 create table #Temp3(
  Finteridbom int null,----BOM����
  Fbomnumber varchar(50),----BOM���
  Fcpitemid int null,---��Ʒ����
  Fcpdm varchar(50),----��Ʒ����
  Fcpname varchar(100),----��Ʒ����
  Fcpgg varchar(100),----��Ʒ���
  Fcpunit varchar(100),---��Ʒ��λ
  Fcpqty decimal(28,8),---��Ʒ����

  Fbomjb varchar(30),---BOM����
  Foneitemid int null,---1����
  Fonebomcc int null,---BOM1��
  Ftwoitemid int null,---2����
  Ftwobomcc int null,---BOM2��
  Fthreeitemid int null,---3����
  Fthreebomcc int null,---BOM3��
  Ffouritemid int null,---4����
  Ffourbomcc int null,---BOM4��
  Ffiveitemid int null,---5����
  Ffivebomcc int null,---BOM5��
  Fsixitemid int null,---6����
  Fsixbomcc int null,---BOM6��
  Fsevenitemid int null,---7����
  Fsevenbomcc int null,---BOM7��
  Feightitemid int null,---8����
  Feightbomcc int null,---BOM8��
  Fnineitemid int null,---9����
  Fninebomcc int null,---BOM9��
  Ftenitemid int null,---10����
  Ftenbomcc int null,---BOM10��
  
  Fclitemid int null,---��������
  FcLdm varchar(50),----���ϴ���
  Fclname varchar(100),----��������
  Fclgg varchar(100),----���Ϲ��
  Fclunit varchar(100),---���ϵ�λ
  Fclqty decimal(28,8),---��������
  Fclsx int null, ----���������⹺����ί��
  Fclsxname varchar(100)----��������
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
-------------------------------------------------------------------------������������
-------------------------------------------------------------------------������Ĳ㿪ʼ
  create table #Temp4(
  Finteridbom int null,----BOM����
  Fbomnumber varchar(50),----BOM���
  Fcpitemid int null,---��Ʒ����
  Fcpdm varchar(50),----��Ʒ����
  Fcpname varchar(100),----��Ʒ����
  Fcpgg varchar(100),----��Ʒ���
  Fcpunit varchar(100),---��Ʒ��λ
  Fcpqty decimal(28,8),---��Ʒ����

  Fbomjb varchar(30),---BOM����
  Foneitemid int null,---1����
  Fonebomcc int null,---BOM1��
  Ftwoitemid int null,---2����
  Ftwobomcc int null,---BOM2��
  Fthreeitemid int null,---3����
  Fthreebomcc int null,---BOM3��
  Ffouritemid int null,---4����
  Ffourbomcc int null,---BOM4��
  Ffiveitemid int null,---5����
  Ffivebomcc int null,---BOM5��
  Fsixitemid int null,---6����
  Fsixbomcc int null,---BOM6��
  Fsevenitemid int null,---7����
  Fsevenbomcc int null,---BOM7��
  Feightitemid int null,---8����
  Feightbomcc int null,---BOM8��
  Fnineitemid int null,---9����
  Fninebomcc int null,---BOM9��
  Ftenitemid int null,---10����
  Ftenbomcc int null,---BOM10��
  
  Fclitemid int null,---��������
  FcLdm varchar(50),----���ϴ���
  Fclname varchar(100),----��������
  Fclgg varchar(100),----���Ϲ��
  Fclunit varchar(100),---���ϵ�λ
  Fclqty decimal(28,8),---��������
  Fclsx int null, ----���������⹺����ί��
  Fclsxname varchar(100)----��������
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
  -------------------------------------------------------------------------������Ĳ����
 -------------------------------------------------------------------------�������㿪ʼ
  create table #Temp5(
  Finteridbom int null,----BOM����
  Fbomnumber varchar(50),----BOM���
  Fcpitemid int null,---��Ʒ����
  Fcpdm varchar(50),----��Ʒ����
  Fcpname varchar(100),----��Ʒ����
  Fcpgg varchar(100),----��Ʒ���
  Fcpunit varchar(100),---��Ʒ��λ
  Fcpqty decimal(28,8),---��Ʒ����

  Fbomjb varchar(30),---BOM����
  Foneitemid int null,---1����
  Fonebomcc int null,---BOM1��
  Ftwoitemid int null,---2����
  Ftwobomcc int null,---BOM2��
  Fthreeitemid int null,---3����
  Fthreebomcc int null,---BOM3��
  Ffouritemid int null,---4����
  Ffourbomcc int null,---BOM4��
  Ffiveitemid int null,---5����
  Ffivebomcc int null,---BOM5��
  Fsixitemid int null,---6����
  Fsixbomcc int null,---BOM6��
  Fsevenitemid int null,---7����
  Fsevenbomcc int null,---BOM7��
  Feightitemid int null,---8����
  Feightbomcc int null,---BOM8��
  Fnineitemid int null,---9����
  Fninebomcc int null,---BOM9��
  Ftenitemid int null,---10����
  Ftenbomcc int null,---BOM10��
  
  Fclitemid int null,---��������
  FcLdm varchar(50),----���ϴ���
  Fclname varchar(100),----��������
  Fclgg varchar(100),----���Ϲ��
  Fclunit varchar(100),---���ϵ�λ
  Fclqty decimal(28,8),---��������
  Fclsx int null, ----���������⹺����ί��
  Fclsxname varchar(100)----��������
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
  -------------------------------------------------------------------------�����������
-------------------------------------------------------------------------��������㿪ʼ
create table #Temp6(
  Finteridbom int null,----BOM����
  Fbomnumber varchar(50),----BOM���
  Fcpitemid int null,---��Ʒ����
  Fcpdm varchar(50),----��Ʒ����
  Fcpname varchar(100),----��Ʒ����
  Fcpgg varchar(100),----��Ʒ���
  Fcpunit varchar(100),---��Ʒ��λ
  Fcpqty decimal(28,8),---��Ʒ����

  Fbomjb varchar(30),---BOM����
  Foneitemid int null,---1����
  Fonebomcc int null,---BOM1��
  Ftwoitemid int null,---2����
  Ftwobomcc int null,---BOM2��
  Fthreeitemid int null,---3����
  Fthreebomcc int null,---BOM3��
  Ffouritemid int null,---4����
  Ffourbomcc int null,---BOM4��
  Ffiveitemid int null,---5����
  Ffivebomcc int null,---BOM5��
  Fsixitemid int null,---6����
  Fsixbomcc int null,---BOM6��
  Fsevenitemid int null,---7����
  Fsevenbomcc int null,---BOM7��
  Feightitemid int null,---8����
  Feightbomcc int null,---BOM8��
  Fnineitemid int null,---9����
  Fninebomcc int null,---BOM9��
  Ftenitemid int null,---10����
  Ftenbomcc int null,---BOM10��
  
  Fclitemid int null,---��������
  FcLdm varchar(50),----���ϴ���
  Fclname varchar(100),----��������
  Fclgg varchar(100),----���Ϲ��
  Fclunit varchar(100),---���ϵ�λ
  Fclqty decimal(28,8),---��������
  Fclsx int null, ----���������⹺����ί��
  Fclsxname varchar(100)----��������
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
-------------------------------------------------------------------------������������
-------------------------------------------------------------------------������߲㿪ʼ
create table #Temp7(
  Finteridbom int null,----BOM����
  Fbomnumber varchar(50),----BOM���
  Fcpitemid int null,---��Ʒ����
  Fcpdm varchar(50),----��Ʒ����
  Fcpname varchar(100),----��Ʒ����
  Fcpgg varchar(100),----��Ʒ���
  Fcpunit varchar(100),---��Ʒ��λ
  Fcpqty decimal(28,8),---��Ʒ����

  Fbomjb varchar(30),---BOM����
  Foneitemid int null,---1����
  Fonebomcc int null,---BOM1��
  Ftwoitemid int null,---2����
  Ftwobomcc int null,---BOM2��
  Fthreeitemid int null,---3����
  Fthreebomcc int null,---BOM3��
  Ffouritemid int null,---4����
  Ffourbomcc int null,---BOM4��
  Ffiveitemid int null,---5����
  Ffivebomcc int null,---BOM5��
  Fsixitemid int null,---6����
  Fsixbomcc int null,---BOM6��
  Fsevenitemid int null,---7����
  Fsevenbomcc int null,---BOM7��
  Feightitemid int null,---8����
  Feightbomcc int null,---BOM8��
  Fnineitemid int null,---9����
  Fninebomcc int null,---BOM9��
  Ftenitemid int null,---10����
  Ftenbomcc int null,---BOM10��
  
  Fclitemid int null,---��������
  FcLdm varchar(50),----���ϴ���
  Fclname varchar(100),----��������
  Fclgg varchar(100),----���Ϲ��
  Fclunit varchar(100),---���ϵ�λ
  Fclqty decimal(28,8),---��������
  Fclsx int null, ----���������⹺����ί��
  Fclsxname varchar(100)----��������
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
-------------------------------------------------------------------------������߲����
-------------------------------------------------------------------------����ڰ˲㿪ʼ
create table #Temp8(
  Finteridbom int null,----BOM����
  Fbomnumber varchar(50),----BOM���
  Fcpitemid int null,---��Ʒ����
  Fcpdm varchar(50),----��Ʒ����
  Fcpname varchar(100),----��Ʒ����
  Fcpgg varchar(100),----��Ʒ���
  Fcpunit varchar(100),---��Ʒ��λ
  Fcpqty decimal(28,8),---��Ʒ����

  Fbomjb varchar(30),---BOM����
  Foneitemid int null,---1����
  Fonebomcc int null,---BOM1��
  Ftwoitemid int null,---2����
  Ftwobomcc int null,---BOM2��
  Fthreeitemid int null,---3����
  Fthreebomcc int null,---BOM3��
  Ffouritemid int null,---4����
  Ffourbomcc int null,---BOM4��
  Ffiveitemid int null,---5����
  Ffivebomcc int null,---BOM5��
  Fsixitemid int null,---6����
  Fsixbomcc int null,---BOM6��
  Fsevenitemid int null,---7����
  Fsevenbomcc int null,---BOM7��
  Feightitemid int null,---8����
  Feightbomcc int null,---BOM8��
  Fnineitemid int null,---9����
  Fninebomcc int null,---BOM9��
  Ftenitemid int null,---10����
  Ftenbomcc int null,---BOM10��
  
  Fclitemid int null,---��������
  FcLdm varchar(50),----���ϴ���
  Fclname varchar(100),----��������
  Fclgg varchar(100),----���Ϲ��
  Fclunit varchar(100),---���ϵ�λ
  Fclqty decimal(28,8),---��������
  Fclsx int null, ----���������⹺����ί��
  Fclsxname varchar(100)----��������
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
-------------------------------------------------------------------------����ڰ˲����
-------------------------------------------------------------------------����ھŲ㿪ʼ
create table #Temp9(
  Finteridbom int null,----BOM����
  Fbomnumber varchar(50),----BOM���
  Fcpitemid int null,---��Ʒ����
  Fcpdm varchar(50),----��Ʒ����
  Fcpname varchar(100),----��Ʒ����
  Fcpgg varchar(100),----��Ʒ���
  Fcpunit varchar(100),---��Ʒ��λ
  Fcpqty decimal(28,8),---��Ʒ����

  Fbomjb varchar(30),---BOM����
  Foneitemid int null,---1����
  Fonebomcc int null,---BOM1��
  Ftwoitemid int null,---2����
  Ftwobomcc int null,---BOM2��
  Fthreeitemid int null,---3����
  Fthreebomcc int null,---BOM3��
  Ffouritemid int null,---4����
  Ffourbomcc int null,---BOM4��
  Ffiveitemid int null,---5����
  Ffivebomcc int null,---BOM5��
  Fsixitemid int null,---6����
  Fsixbomcc int null,---BOM6��
  Fsevenitemid int null,---7����
  Fsevenbomcc int null,---BOM7��
  Feightitemid int null,---8����
  Feightbomcc int null,---BOM8��
  Fnineitemid int null,---9����
  Fninebomcc int null,---BOM9��
  Ftenitemid int null,---10����
  Ftenbomcc int null,---BOM10��
  
  Fclitemid int null,---��������
  FcLdm varchar(50),----���ϴ���
  Fclname varchar(100),----��������
  Fclgg varchar(100),----���Ϲ��
  Fclunit varchar(100),---���ϵ�λ
  Fclqty decimal(28,8),---��������
  Fclsx int null, ----���������⹺����ί��
  Fclsxname varchar(100)----��������
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
-------------------------------------------------------------------------����ھŲ����
-------------------------------------------------------------------------�����ʮ�㿪ʼ
create table #Temp10(
  Finteridbom int null,----BOM����
  Fbomnumber varchar(50),----BOM���
  Fcpitemid int null,---��Ʒ����
  Fcpdm varchar(50),----��Ʒ����
  Fcpname varchar(100),----��Ʒ����
  Fcpgg varchar(100),----��Ʒ���
  Fcpunit varchar(100),---��Ʒ��λ
  Fcpqty decimal(28,8),---��Ʒ����

  Fbomjb varchar(30),---BOM����
  Foneitemid int null,---1����
  Fonebomcc int null,---BOM1��
  Ftwoitemid int null,---2����
  Ftwobomcc int null,---BOM2��
  Fthreeitemid int null,---3����
  Fthreebomcc int null,---BOM3��
  Ffouritemid int null,---4����
  Ffourbomcc int null,---BOM4��
  Ffiveitemid int null,---5����
  Ffivebomcc int null,---BOM5��
  Fsixitemid int null,---6����
  Fsixbomcc int null,---BOM6��
  Fsevenitemid int null,---7����
  Fsevenbomcc int null,---BOM7��
  Feightitemid int null,---8����
  Feightbomcc int null,---BOM8��
  Fnineitemid int null,---9����
  Fninebomcc int null,---BOM9��
  Ftenitemid int null,---10����
  Ftenbomcc int null,---BOM10��
  
  Fclitemid int null,---��������
  FcLdm varchar(50),----���ϴ���
  Fclname varchar(100),----��������
  Fclgg varchar(100),----���Ϲ��
  Fclunit varchar(100),---���ϵ�λ
  Fclqty decimal(28,8),---��������
  Fclsx int null, ----���������⹺����ί��
  Fclsxname varchar(100)----��������
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
-------------------------------------------------------------------------�����ʮ�����

-------------------------------------------------------------------------����ɱ�BOM��ʼ
select Fbomnumber as 'BOM���',Fcpdm as '��Ʒ����',Fcpname as '��Ʒ����',Fcpgg as '��Ʒ���',Fcpunit as '��Ʒ��λ',Fcpqty as '��Ʒ����',
Fbomjb as '���',FcLdm as '���ϴ���',Fclname as '��������',Fclgg as '���Ϲ��',Fclunit as '���ϵ�λ',Fclqty as '����',Fclsxname as '��������'
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