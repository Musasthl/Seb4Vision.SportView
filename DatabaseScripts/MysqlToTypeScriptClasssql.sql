select concat( column_name, ': ', tps.dest, ';') as code 
from  information_schema.columns c
join(
select 'char' as orign ,'string' as dest union all
select 'varchar' ,'string' union all
select 'longtext' ,'string' union all
select 'datetime' ,'DateTime' union all
select 'text' ,'string' union all
select 'bit' ,'number' union all
select 'bigint' ,'number' union all
select 'int' ,'number' union all
select 'double' ,'number' union all
select 'decimal' ,'number' union all
select 'date' ,'DateTime' union all
select 'tinyint' ,'bool'
) tps on c.data_type like tps.orign
where table_schema='soccer' and table_name='sportvuteamstats' 
order by c.ordinal_position