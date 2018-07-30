select
   case when columns.table_name like '%_v1' or columns.table_name like '%_v2' then false else true end as is_conflict
  ,tables.table_type
  ,columns.*
from
  information_schema.columns as columns
  inner join information_schema.tables on tables.table_catalog = columns.table_catalog and  tables.table_schema = columns.table_schema and  tables.table_name = columns.table_name
where columns.table_schema like 'clean_%' and columns.table_schema not like '%_v1' and columns.table_schema not like '%_v2'   
and ( case when columns.table_name like '%_v1' or columns.table_name like '%_v2' then false else true end ) 
