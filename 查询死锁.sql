SELECT     
    request_session_id spid,   
    OBJECT_NAME(resource_associated_entity_id) tableName    
from    
    sys.dm_tran_locks   
where    
    resource_type='OBJECT '

KILL 130


SELECT * FROM AVALNUM


SELECT TOP 1
	request_session_id spid   
from    
	sys.dm_tran_locks   
where resource_type='OBJECT '
	and OBJECT_NAME(resource_associated_entity_id) = 'AVALNUM'

SELECT * FROM sys.dm_tran_locks