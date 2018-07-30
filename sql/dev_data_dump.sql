-- select * from normalised_business_objects.web_sessions where id%10632 = 0 
select 	 count(*) as records 
		,sum(case when (id % 1421) = 0 then 1 else 0 end) as selected_records
		,(sum(case when (id % 1421) = 0 then 1 else 0 end) / count(*))::numeric(17,14) as percent_selected
from raw_saasu_v1.invoice_items 

--where (id % 632) = 0 

SELECT cn.nspname AS schema_child, c.relname AS child, pn.nspname AS schema_parent, p.relname AS parent
FROM pg_inherits
JOIN pg_class AS c ON (inhrelid=c.oid)
JOIN pg_class as p ON (inhparent=p.oid)
JOIN pg_namespace pn ON pn.oid = p.relnamespace
JOIN pg_namespace cn ON cn.oid = c.relnamespace
WHERE p.relname = 'product_products' and pn.nspname = 'live_maxwell'

SELECT pg_inherits.*, c.relname AS child, p.relname AS parent
FROM
pg_inherits JOIN pg_class AS c ON (inhrelid=c.oid)
JOIN pg_class as p ON (inhparent=p.oid);

SELECT relname
FROM pg_class,pg_inherits
WHERE pg_class.oid=pg_inherits.inhrelid
AND inhparent
IN (SELECT oid FROM pg_class WHERE relname='your_master_partition')
ORDER BY relname;