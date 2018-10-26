

mike [12:56 PM]: I thought scenic had a single method for updating views

update_view 'normalised_business_objects.product_latest_prices',
            version: 3,
            revert_to_version: 2



            def down
              say 'Nothing to see here'
            end
