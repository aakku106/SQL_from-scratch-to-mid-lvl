-- USE NepathyaDB;
-- CREATE table audit_log(
--     id int PRIMARY KEY IDENTITY(1,1),
--     action_time DATETIME,
--     action_type VARCHAR(10),
--     table_name VARCHAR(50),
--     user_info VARCHAR(100));
   


    -- CREATE TRIGGER  log_insert ON
    --  Std_det after insert as BEGIN
    --  INSERT into audit_log 
    --  (action_time,action_type,table_name,user_info)
    --  SELECT GETDATE(),
    --  'INSERT',
    --  'Std_det',
    --  SYSTEM_USER
    --  FROM inserted;
    --  END;
    -- CREATE TRIGGER  log_update ON
    --  Std_det after update as BEGIN
    --  INSERT into audit_log 
    --  (action_time,action_type,table_name,user_info)
    --  SELECT GETDATE(),
    --  'Update',
    --  'Std_det',
    --  SYSTEM_USER
    --  FROM inserted;
    --  END;
    CREATE TRIGGER  log_deleted ON
     Std_det after delete as BEGIN
     INSERT into audit_log 
     (action_time,action_type,table_name,user_info)
     SELECT GETDATE(),
     'Delete',
     'Std_det',
     SYSTEM_USER
     FROM deleted;
     END;
