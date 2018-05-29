SELECT 
session_id, percent_complete,  request_id, start_time, status, command, sql_handle
, database_id, user_id 
, blocking_session_id
, wait_type, wait_time, last_wait_type, wait_resource, open_transaction_count, open_resultset_count, transaction_id
,estimated_completion_time, cpu_time, total_elapsed_time, scheduler_id
, reads, writes, logical_reads
FROM sys.dm_exec_requests WHERE session_id=63


--exec sp_who2