# Get rid of primary key id as this will be RAILS generated
 *\( *\n *`id`.*\n
<<empty string>>

# Get SKIP key comments in CREATE table file as these will be included in add_keys
 *-- *SKIP.*\n
<<empty string>>

# Replace bracketed comments in table names
`(\w+) *\(.*\)`
<<empty string>>

# Create tables
CREATE TABLE *`(\w+)`
    create_table 'normalised_business_objects_and_events.$1' do |t|

# syntactically-reorder column declarations in create_table
#^ *`([^`]*)` *([\w(),]*)
      t.$2 :$1,

# Set Null(able) and Not Null

, *NOT NULL *,|, *NULL *,
, null: false

, *,\n
, null: true\n

, NULL ,

# set data types in create_table

VARCHAR\(255\)
string

VARCHAR\((\d+)\)(.*)\n
string$2, :limit => $1\n

TIMESTAMP
timestamp

t.column :created_at, :timestamptz, null: false

BOOLEAN
boolean

NUMERIC\((\d+),(\d+)\)(.*)\n
decimal$3, :precision => $1, :scale => $2\n

t.INT\d+
t.integer

# drop_table
 *DROP TABLE `(\w+)`;
      drop_table 'normalised_business_objects_and_events.$1'

remove_index 'normalised_business_objects_and_events.sources', name: 'uidx_sources_on_source_natural_key'
remove_foreign_key

## Keys and indexes

## alter tables to add_keys

 *ALTER TABLE *`(\w+) *.*`\n *ADD KEY.*\n *ADD CONSTRAINT.*FOREIGN KEY *`fkIdx_\d+` \(`(\w+)`\) *REFERENCES *`(\w+)`.*
      add_foreign_key 'normalised_business_objects_and_events.$1', 'normalised_business_objects_and_events.$3', column: :$2, name: 'fk_$3_on_$2'\n\n      remove_foreign_key 'normalised_business_objects_and_events.$1', name: 'fk_$3_on_$2'

# *ALTER TABLE *`(\w+) *.*`\n *ADD UNIQUE *KEY.*`uidx_\w+` *\(`(\w+)`, *`(\w+)`\);
#      add_index :$1, [:$2, :$2], name: 'uidx_$1_on_$2', unique: true\n\n      remove_index 'normalised_business_objects_and_events.$1', name: 'uidx_$1_on_$2'

 *ALTER TABLE *`(\w+) *.*`\n *ADD UNIQUE *KEY.*`uidx_\w+` *\(`(\w+)`\);
      add_index 'normalised_business_objects_and_events.$1', :$2, name: 'uidx_$1_on_$2', unique: true\n\n      remove_index 'normalised_business_objects_and_events.$1', name: 'uidx_$1_on_$2'


# Use to replace remove_foreign_key
remove_foreign_key '(\w+)\.(\w+)', name: '(\w+)'
execute 'ALTER TABLE $1.$2 DROP CONSTRAINT $3;'

# Replace bracketed comments in table names
`(\w+) *\(.*\)`
<<empty string>>

## Clean up white space and

\(\n
<<empty string>>

\);\n
  end\n\n

\n\n\n
\n\n

\n\n *add_
\n    end\n    add_

 *add_
    add_

# add table name comments into add_keys
-- \** *`(\w+) *.*`\n
    # $1\n
