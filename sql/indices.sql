select
     n.nspname as schema_name
    ,t.relname as table_name
    ,i.relname as index_name
    ,a.attname as column_name
from
    pg_class t,
    pg_class i,
    pg_index ix,
    pg_attribute a,
    pg_namespace n 
where
    t.oid = ix.indrelid
    and i.oid = ix.indexrelid
    and a.attrelid = t.oid
    and a.attnum = ANY(ix.indkey)
    and n.oid = t.relnamespace
    and t.relkind = 'r'
    --and t.relname like 'invoice%'
    and n.nspname like 'raw%'
    --and n.nspname like 'normalis%'
order by
     n.nspname
    ,t.relname
    ,i.relname;