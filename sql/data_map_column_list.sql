


select column_name ,min(table_schema) as first_table_schema ,max(table_schema) as last_table_schema, count(*) as scheam_count 
--table_schema ,table_name ,column_name 
from information_schema.columns 
where ( table_name = 'invoices' and table_schema = 'normalised_business_objects' )
or ( table_name = 'invoices' and table_schema = 'clean_saasu_v2' )
group by column_name
order by first_table_schema ,column_name






select * --,table_schema ,table_name ,column_name 
from information_schema.columns 
where true 
and table_schema = 'normalised_business_objects'
and table_name = 'sales_orders'
order by table_name ,ordinal_position


select * from normalised_business_objects.sales_orders --limit 10

