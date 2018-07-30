^ *`([^`]*)` *([\w(),]*)
      t.$2 :$1,

, *NOT NULL ,
, null: false

, *NULL *,
, null: false

, *,\n
, null: true\n

t.NOT
t.integer

CREATE TABLE *`([\w]*)`
    create_table 'normalised_business_objects_and_events.$1' do |t|

CREATE TABLE *`([\w]*) *\(\w*\)`
    create_view 'normalised_business_objects_and_events.$1'

VARCHAR\(255\)
string

VARCHAR\((\d+)\)(.*)\n
string$2, :limit => $1\n

TIMESTAMP
timestamp

NUMERIC\((\d+),(\d+)\)(.*)\n
decimal$3, :precision => $1, :scale => $2\n

.*:id,.*\n
<<empty string>>

t.INT\d+
t.integer

PRIMARY KEY \(`id`\),\n
<<empty string>>

PRIMARY KEY \(`id`, `item_type_id`\),\n
<<empty string>>

PRIMARY KEY \(`id`\)\n
<<empty string>>

 *KEY.*\n *CONSTRAINT.*FOREIGN KEY *`fkIdx_\d+` \(`(\w+)`\) *REFERENCES *`(\w+)`.*
      add_foreign_key 'normalised_business_objects_and_events.<<table_name>>', 'normalised_business_objects_and_events.$2', column: :$1, name: 'fk_$2_on_$1'

UNIQUE *KEY.*`(\w+)-uidx_(\w+)` *\(`(\w+)`, *`(\w+)`\),
      add_index :$1, [:$3, :$4], name: 'uidx$2', unique: true

UNIQUE *KEY.*`(\w+)-uidx_(\w+)` *\(`(\w+)`\),
      add_index 'normalised_business_objects_and_events.$1', :$3, name: 'uidx_$1_on_$2', unique: true

KEY.*`(\w+)` *\(`(\w+)`\),
      add_index 'normalised_business_objects_and_events.<<table_name>>' :$2, name: '$1'

add_foreign_key :(\w+), *:(\w+)
add_foreign_key 'normalised_business_objects_and_events.$1', 'normalised_business_objects_and_events.$2'

\(\n
<<empty string>>

\);\n
  end\n\n

\n\n\n
\n\nß

\n\n *add_
\n    end\n    add_

      add_
    add_

class NormalisedBusinessObjectsAndEvents
# Need to select and Initcap next ([\w]*) word and trim the space before it (between it and events)
