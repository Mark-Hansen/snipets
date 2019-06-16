
script/rails generate migration AddSourceSourceIdentifierToNboProductTables
#  RETURNS
#  invoke  active_record
#  create    db/migrate/20181107005836_add_source_source_identifier_to_nbo_product_tables.rb


script/rails generate scenic:view:db view_name
# mike [12:56 PM]: I thought scenic had a single method for updating views
# only works where there are no dependent views
update_view 'normalised_business_objects.product_latest_prices',
            version: 3,
            revert_to_version: 2



            def down
              say 'Nothing to see here'
            end


# RSPEC testing
RAILS_ENV=test rake db:migrate
bundle exec rspec spec

# upgrade ruby
# Siegfried project version is set in bellroy-siegfried/.ruby-version
$ brew upgrade rbenv
