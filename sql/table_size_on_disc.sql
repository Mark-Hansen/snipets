SELECT nspname || '.' || relname AS "relation", nspname, relname,
	case C.relkind	when 'r' then 'table'
					when 'm' then 'view-materialised'
					when 'v' then 'view'
					else 'ERROR' end as object_type,
    pg_size_pretty(pg_total_relation_size(C.oid)) AS "total_size",
    pg_total_relation_size(C.oid) as total_size_integer
  FROM pg_class C
  LEFT JOIN pg_namespace N ON (N.oid = C.relnamespace)
  WHERE true
 and nspname NOT IN ('pg_catalog', 'information_schema','looker_scratch','tmp','reallytmp')
    AND C.relkind in ( 'r' ) --, 'v', 'm' )
    --AND nspname !~ '^pg_toast'
    --and nspname = 'raw_amazon'
 ORDER BY -- nspname ,relname --
  pg_total_relation_size(C.oid) DESC
  --LIMIT 200;
  
SELECT schemaname,relname,n_live_tup ,*
  FROM pg_stat_user_tables 
  where schemaname = 'normalised_business_objects'
  ORDER BY n_live_tup DESC;
  
 
 
 select  user_stats.schemaname ,user_stats.relname 
 		,user_stats.n_live_tup as active_records ,user_stats.n_dead_tup as obsoleted_records 
		,pg_size_pretty(pg_total_relation_size(classes.oid)) as total_size
  from	pg_stat_user_tables as user_stats 
  		inner join pg_class as classes on user_stats.relname = classes.relname and user_stats.schemaname = 'normalised_business_objects' --and user_stats.schemaname = current_schema()

  		
  		where 
		
select current_schema()


select * from playground.case_sensitive_natural_keys

user_stats.schemaname = classes.nspname and user_stats.relname = classes.relname

 select namespaces.nspname, * 
 from pg_class as classes inner join pg_namespace as namespaces on namespaces.oid = classes.relnamespace 
 where namespaces.nspname = 'normalised_business_objects' 
 and relkind = 'v'
 
 select * from pg_class where relkind = 't' and relname !~ '^pg_toast'
 
 /*

S = sequence
i = index
m = materialized views
r = tables
v = views
t = pg_toast
c = crosstab function

  */
 
 where relname like '%products%'
	
	
 SELECT nspname || '.' || relname AS "relation", nspname, 
    pg_size_pretty(pg_total_relation_size(C.oid)) AS "total_size"
  FROM pg_class C
  LEFT JOIN pg_namespace N ON (N.oid = C.relnamespace)
  WHERE nspname NOT IN ('pg_catalog', 'information_schema')
    AND C.relkind <> 'i'
    AND nspname !~ '^pg_toast'
  ORDER BY pg_total_relation_size(C.oid) DESC
