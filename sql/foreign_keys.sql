select 
    con.schema_name,
    con.child_table,
	att2.attname as "child_column", 
    cl.relname as "parent_table", 
    att.attname as "parent_column",
    conname
from
   (select 
        unnest(con1.conkey) as "parent", 
        unnest(con1.confkey) as "child", 
        cl.relname as child_table,
        ns.nspname as schema_name,
        con1.confrelid, 
        con1.conrelid,
        con1.conname
    from 
        pg_class cl
        join pg_namespace ns on cl.relnamespace = ns.oid
        join pg_constraint con1 on con1.conrelid = cl.oid
    where true
        --and cl.relname = 'kaos_product_dimensions' --// child table
        and ns.nspname = 'live_maxwell' --// child schema
        and con1.contype = 'f'
   ) con
   join pg_attribute att on
       att.attrelid = con.confrelid and att.attnum = con.child
   join pg_class cl on
       cl.oid = con.confrelid
   join pg_attribute att2 on
       att2.attrelid = con.conrelid and att2.attnum = con.parent
where 	true
and		cl.relname = 'kaos_product_dimensions' --// parent table
   order by con.schema_name,
    con.child_table