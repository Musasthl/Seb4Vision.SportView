select concat('public ',tps.dest,' ',column_name,'{get;set;}') as code 
from  information_schema.columns c
join(
select 'char' as orign ,'string' as dest union all
select 'varchar' ,'string' union all
select 'longtext' ,'string' union all
select 'datetime' ,'DateTime' union all
select 'text' ,'string' union all
select 'bit' ,'int' union all
select 'bigint' ,'int' union all
select 'int' ,'int' union all
select 'double' ,'double' union all
select 'decimal' ,'double' union all
select 'date' ,'DateTime' union all
select 'tinyint' ,'bool'
) tps on c.data_type like tps.orign
where table_schema='your_schema' and table_name='your_table' 
order by c.ordinal_position