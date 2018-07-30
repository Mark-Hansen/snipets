-- ****************** SqlDBM: MySQL ******************;
-- ***************************************************;


-- ************************************** `currencies`

CREATE TABLE `currencies`
(
 `id`            INT4 NOT NULL ,
 `currency_name` VARCHAR(45) NOT NULL ,
 `currency_code` VARCHAR(10) NOT NULL ,
 `created_at`    TIMESTAMP NOT NULL ,
 `updated_at`    TIMESTAMP NOT NULL ,
 `deleted_at`    TIMESTAMP ,

-- SKIP: `PRIMARY
);





-- ************************************** `exchange_rates`

CREATE TABLE `exchange_rates`
(
 `id`               INT4 NOT NULL ,
 `exchange_rate`    NUMERIC(36,15) NOT NULL ,
 `from_currency_id` INT4 NOT NULL ,
 `to_currency_id`   INT4 NOT NULL ,
 `applicable_on`    DATE NOT NULL ,
 `created_at`       TIMESTAMP NOT NULL ,
 `updated_at`       TIMESTAMP NOT NULL ,
 `deleted_at`       TIMESTAMP ,

-- SKIP: `PRIMARY`
-- SKIP: `fkIdx_1897`
-- SKIP: `fkIdx_1901
);





-- ************************************** `sales_regions`

CREATE TABLE `sales_regions`
(
 `id`                       INT4 NOT NULL ,
 `sales_region_natural_key` VARCHAR(45) NOT NULL ,
 `parent_region_id`         INT4 NOT NULL ,
 `created_at`               TIMESTAMP NOT NULL ,
 `updated_at`               TIMESTAMP NOT NULL ,
 `deleted_at`               TIMESTAMP ,
 `source_primary_key`       VARCHAR(45) ,
 `source_id`                INT4 NOT NULL ,

-- SKIP: `PRIMARY`
-- SKIP: `fkIdx_1608`
-- SKIP: `fkIdx_1655
);





-- ************************************** `contacts`

CREATE TABLE `contacts`
(
 `id`                       INT4 NOT NULL ,
 `contact`                  VARCHAR(255) NOT NULL ,
 `contact_hash_natural_key` VARCHAR(255) NOT NULL ,
 `created_at`               TIMESTAMP NOT NULL ,
 `updated_at`               TIMESTAMP NOT NULL ,
 `deleted_at`               TIMESTAMP ,
 `source_primary_key`       VARCHAR(45) NOT NULL ,
 `source_id`                INT4 NOT NULL ,

-- SKIP: `PRIMARY`
-- SKIP: `contacts-uidx_contact_hash_natural_key`
-- SKIP: `fkIdx_932
);





-- ************************************** `channels`

CREATE TABLE `channels`
(
 `id`                  INT4 NOT NULL ,
 `channel_natural_key` VARCHAR(255) NOT NULL ,
 `parent_channel_id`   INT4 NOT NULL ,
 `created_at`          TIMESTAMP NOT NULL ,
 `updated_at`          TIMESTAMP NOT NULL ,
 `deleted_at`          TIMESTAMP ,
 `source_primary_key`  VARCHAR(45) ,
 `source_id`           INT4 NOT NULL ,

-- SKIP: `PRIMARY`
-- SKIP: `fkIdx_1600`
-- SKIP: `fkIdx_1659
);





-- ************************************** `purchase_line_items`

CREATE TABLE `purchase_line_items`
(
 `id`                             INT4 NOT NULL ,
 `joined_parent_id`               INT4 NOT NULL ,
 `joined_to`                      VARCHAR(130) NOT NULL ,
 `item_id`                        INT4 ,
 `item_type_id`                   INT4 ,
 `item_reference`                 VARCHAR(45) NOT NULL ,
 `description`                    VARCHAR(255) NOT NULL ,
 `quantity`                       INT4 NOT NULL ,
 `exchange_rate`                  NUMERIC(36,15) NOT NULL ,
 `exchange_rate_to_currency_code` VARCHAR(3) NOT NULL ,
 `unit_price_local_currency`      NUMERIC(18,2) NOT NULL ,
 `source_id`                      INT4 NOT NULL ,
 `created_at`                     TIMESTAMP NOT NULL ,
 `updated_at`                     TIMESTAMP NOT NULL ,
 `deleted_at`                     TIMESTAMP ,
 `source_primary_key`             VARCHAR(45) NOT NULL ,

-- SKIP: `PRIMARY`
-- SKIP: `fkIdx_1449`
-- SKIP: `fkIdx_1473
);





-- ************************************** `purchases`

CREATE TABLE `purchases`
(
 `id`                                       INT4 NOT NULL ,
 `source_primary_key`                       VARCHAR(45) NOT NULL ,
 `source_id_composite_natural_key`          INT4 NOT NULL ,
 `purchase_reference_composite_natural_key` VARCHAR(45) NOT NULL ,
 `supplier_purchase_reference`              VARCHAR(45) NOT NULL ,
 `purchase_date`                            TIMESTAMP NOT NULL ,
 `due_date`                                 TIMESTAMP NOT NULL ,
 `currency_code`                            VARCHAR(3) NOT NULL ,
 `supplier_contact_id`                      INT4 NOT NULL ,
 `created_at`                               TIMESTAMP NOT NULL ,
 `updated_at`                               TIMESTAMP NOT NULL ,
 `deleted_at`                               TIMESTAMP NOT NULL ,

-- SKIP: `PRIMARY`
-- SKIP: `fkIdx_1441`
-- SKIP: `fkIdx_1487
);





-- ************************************** `charges`

CREATE TABLE `charges`
(
 `id`                  NOT NULL ,
 `item_type_id`       INT4 NOT NULL ,
 `calculation`        VARCHAR(255) NOT NULL ,
 `charge_type_id`      NOT NULL ,
 `created_at`         TIMESTAMP NOT NULL ,
 `updated_at`         TIMESTAMP NOT NULL ,
 `deleted_at`         TIMESTAMP ,
 `source_primary_key` VARCHAR(45) NOT NULL ,
 `source_id`          INT4 NOT NULL ,

-- SKIP: `PRIMARY`
-- SKIP: `fkIdx_889`
-- SKIP: `fkIdx_1047`
-- SKIP: `fkIdx_1231
);





-- ************************************** `payments`

CREATE TABLE `payments`
(
 `id`                                     INT4 NOT NULL ,
 `payment_reference`                      VARCHAR(255) NOT NULL ,
 `paid_by_contact_id`                     INT4 NOT NULL ,
 `currency_code`                          VARCHAR(3) NOT NULL ,
 `amount_paid_local_currency`             NUMERIC(18,2) NOT NULL ,
 `transaction_exchange_rate_local_to_aud` NUMERIC(36,15) NOT NULL ,
 `transaction_placed_at`                  TIMESTAMP NOT NULL ,
 `payment_type_id`                         NOT NULL ,
 `created_at`                             TIMESTAMP NOT NULL ,
 `updated_at`                             TIMESTAMP NOT NULL ,
 `deleted_at`                             TIMESTAMP ,
 `source_primary_key`                     VARCHAR(45) NOT NULL ,
 `source_id`                              INT4 NOT NULL ,

-- SKIP: `PRIMARY`
-- SKIP: `fkIdx_664`
-- SKIP: `fkIdx_678`
-- SKIP: `fkIdx_978
);





-- ************************************** `merchandising_products`

CREATE TABLE `merchandising_products`
(
 `id`                 INT4 NOT NULL ,
 `item_type_id`       INT4 NOT NULL ,
 `merchandising`      VARCHAR(255) NOT NULL ,
 `created_at`         TIMESTAMP NOT NULL ,
 `updated_at`         TIMESTAMP NOT NULL ,
 `deleted_at`         TIMESTAMP ,
 `source_primary_key` VARCHAR(45) ,
 `source_id`          INT4 NOT NULL ,

-- SKIP: `PRIMARY`
-- SKIP: `fkIdx_1035`
-- SKIP: `fkIdx_1219
);





-- ************************************** `taxes`

CREATE TABLE `taxes`
(
 `id`                 INT4 NOT NULL ,
 `item_type_id`       INT4 NOT NULL ,
 `tax_code`           VARCHAR(10) NOT NULL ,
 `tax`                VARCHAR(45) NOT NULL ,
 `calculation`        VARCHAR(255) NOT NULL ,
 `created_at`         TIMESTAMP NOT NULL ,
 `updated_at`         TIMESTAMP NOT NULL ,
 `deleted_at`         TIMESTAMP ,
 `source_primary_key` VARCHAR(45) ,
 `source_id`          INT4 NOT NULL ,

-- SKIP: `PRIMARY`
-- SKIP: `fkIdx_928`
-- SKIP: `fkIdx_1792
);





-- ************************************** `products (kaos_product_products)`

CREATE TABLE `products (kaos_product_products)`
(
 `id`                 INT4 NOT NULL ,
 `item_type_id`       INT4 NOT NULL ,
 `product`            VARCHAR(255) NOT NULL ,
 `identifier_sku`     VARCHAR(45) NOT NULL ,
 `created_at`         TIMESTAMP NOT NULL ,
 `updated_at`         TIMESTAMP NOT NULL ,
 `deleted_at`         TIMESTAMP ,
 `source_primary_key` VARCHAR(45) ,
 `source_id`          INT4 NOT NULL ,

-- SKIP: `PRIMARY`
-- SKIP: `fkIdx_1031`
-- SKIP: `fkIdx_1215
);





-- ************************************** `promotions (kaos_sales_promotions)`

CREATE TABLE `promotions (kaos_sales_promotions)`
(
 `id`                 INT4 NOT NULL ,
 `item_type_id`       INT4 NOT NULL ,
 `promotion_code`     VARCHAR(45) NOT NULL ,
 `promotion`          VARCHAR(255) NOT NULL ,
 `calculation`        VARCHAR(255) NOT NULL ,
 `currency_code`      VARCHAR(3) ,
 `promotion_type_id`  INT4 NOT NULL ,
 `created_at`         TIMESTAMP NOT NULL ,
 `updated_at`         TIMESTAMP NOT NULL ,
 `deleted_at`         TIMESTAMP ,
 `source_primary_key` VARCHAR(45) ,
 `source_id`          INT4 NOT NULL ,

-- SKIP: `PRIMARY`
-- SKIP: `fkIdx_763`
-- SKIP: `fkIdx_1043`
-- SKIP: `fkIdx_1223
);





-- ************************************** `sale_line_items`

CREATE TABLE `sale_line_items`
(
 `id`                             INT4 NOT NULL ,
 `joined_parent_id`               INT4 NOT NULL ,
 `joined_to`                      VARCHAR(130) NOT NULL ,
 `item_id`                        INT4 NOT NULL ,
 `item_type_id`                   INT4 NOT NULL ,
 `item_reference`                 VARCHAR(45) NOT NULL ,
 `description`                    VARCHAR(255) NOT NULL ,
 `quantity`                       INT4 ,
 `exchange_rate`                  NUMERIC(36,15) NOT NULL ,
 `exchange_rate_to_currency_code` VARCHAR(3) NOT NULL ,
 `unit_price_local_currency`      NUMERIC(18,2) ,
 `created_at`                     TIMESTAMP NOT NULL ,
 `updated_at`                     TIMESTAMP NOT NULL ,
 `deleted_at`                     TIMESTAMP ,
 `source_primary_key`             VARCHAR(45) NOT NULL ,
 `source_id`                      INT4 NOT NULL ,

-- SKIP: `PRIMARY`
-- SKIP: `fkIdx_924`
-- SKIP: `fkIdx_1055
);





-- ************************************** `addresses`

CREATE TABLE `addresses`
(
 `id`                 INT4 NOT NULL ,
 `address_line_1`     VARCHAR(255) NOT NULL ,
 `address_line_2`     VARCHAR(255) NOT NULL ,
 `location`           VARCHAR(255) NOT NULL ,
 `state`              VARCHAR(255) NOT NULL ,
 `postcode`           VARCHAR(255) NOT NULL ,
 `country_id`         INT4 NOT NULL ,
 `created_at`         TIMESTAMP NOT NULL ,
 `updated_at`         TIMESTAMP NOT NULL ,
 `deleted_at`         TIMESTAMP ,
 `source_primary_key` VARCHAR(45) ,
 `source_id`          INT4 NOT NULL ,

-- SKIP: `PRIMARY`
-- SKIP: `fkIdx_344`
-- SKIP: `fkIdx_1253
);





-- ************************************** `sales`

CREATE TABLE `sales`
(
 `id`                         INT4 NOT NULL ,
 `sale_reference_natural_key` VARCHAR(45) NOT NULL ,
 `customer_sale_reference`    VARCHAR(45) ,
 `sale_date`                  TIMESTAMP NOT NULL ,
 `due_date`                   TIMESTAMP NOT NULL ,
 `currency_code`              VARCHAR(3) NOT NULL ,
 `channel_id`                 INT4 NOT NULL ,
 `region_id`                  INT4 NOT NULL ,
 `customer_contact_id`        INT4 ,
 `shipping_address_id`        INT4 ,
 `billing_address_id`         INT4 ,
 `created_at`                 TIMESTAMP NOT NULL ,
 `updated_at`                 TIMESTAMP NOT NULL ,
 `deleted_at`                 TIMESTAMP ,
 `source_primary_key`         VARCHAR(45) NOT NULL ,
 `source_id`                  INT4 NOT NULL ,

-- SKIP: `PRIMARY`
-- SKIP: `sales-uidx_sale_reference_natural_key`
-- SKIP: `fkIdx_292`
-- SKIP: `fkIdx_296`
-- SKIP: `fkIdx_309`
-- SKIP: `fkIdx_920`
-- SKIP: `fkIdx_1143`
-- SKIP: `fkIdx_1155
);





-- ************************************** `reconciliations`

CREATE TABLE `reconciliations`
(
 `id`                    INT4 NOT NULL ,
 `currency_code`         VARCHAR(3) NOT NULL ,
 `amount_local_currency` NUMERIC(18,2) NOT NULL ,
 `payment_id`            INT4 NOT NULL ,
 `sale_id`               INT4 NOT NULL ,
 `created_at`            TIMESTAMP NOT NULL ,
 `updated_at`            TIMESTAMP NOT NULL ,
 `deleted_at`            TIMESTAMP ,
 `source_primary_key`    VARCHAR(45) ,
 `source_id`             INT4 NOT NULL ,

-- SKIP: `PRIMARY`
-- SKIP: `fkIdx_691`
-- SKIP: `fkIdx_699`
-- SKIP: `fkIdx_1257
);





-- ************************************** `shipments`

CREATE TABLE `shipments`
(
 `id`                             INT4 NOT NULL ,
 `shipping_carrier_contact_id`    INT4 NOT NULL ,
 `warehouse_id`                   INT4 NOT NULL ,
 `shipment_reference_natural_key` VARCHAR(255) NOT NULL ,
 `shipped_date`                   TIMESTAMP NOT NULL ,
 `created_at`                     TIMESTAMP NOT NULL ,
 `updated_at`                     TIMESTAMP NOT NULL ,
 `deleted_at`                     TIMESTAMP ,
 `source_primary_key`             VARCHAR(45) NOT NULL ,
 `source_id`                      INT4 NOT NULL ,

-- SKIP: `PRIMARY`
-- SKIP: `shipments-uidx_shipment_reference_natural_key`
-- SKIP: `fkIdx_554`
-- SKIP: `fkIdx_558`
-- SKIP: `idx_shipment_reference_natural_key`
-- SKIP: `fkIdx_1108
);





-- ************************************** `inventory_items`

CREATE TABLE `inventory_items`
(
 `id`                 INT4 NOT NULL ,
 `warehouse_id`       INT4 NOT NULL ,
 `item_id`            INT4 NOT NULL ,
 `item_type_id`       INT4 NOT NULL ,
 `item_reference`     VARCHAR(45) ,
 `description`        VARCHAR(255) ,
 `created_at`         TIMESTAMP NOT NULL ,
 `updated_at`         TIMESTAMP NOT NULL ,
 `deleted_at`         TIMESTAMP ,
 `source_primary_key` VARCHAR(45) NOT NULL ,
 `source_id`          INT4 NOT NULL ,

-- SKIP: `PRIMARY`
-- SKIP: `fkIdx_115`
-- SKIP: `fkIdx_1116`
-- SKIP: `fkIdx_1203
);





-- ************************************** `freight_charges`

CREATE TABLE `freight_charges`
(
 `id`                 INT4 NOT NULL ,
 `item_type_id`       INT4 NOT NULL ,
 `freight`            VARCHAR(45) NOT NULL ,
 `warehouse_id`       INT4 NOT NULL ,
 `created_at`         TIMESTAMP NOT NULL ,
 `updated_at`         TIMESTAMP NOT NULL ,
 `deleted_at`         TIMESTAMP ,
 `source_primary_key` VARCHAR(45) ,
 `source_id`          INT4 NOT NULL ,

-- SKIP: `PRIMARY`
-- SKIP: `fkIdx_95`
-- SKIP: `fkIdx_1039`
-- SKIP: `fkIdx_1227
);





-- ************************************** `shipment_line_items`

CREATE TABLE `shipment_line_items`
(
 `id`                 INT4 NOT NULL ,
 `quantity`           INT4 NOT NULL ,
 `sales_line_item_id` INT4 NOT NULL ,
 `inventory_item_id`  INT4 NOT NULL ,
 `shipment_id`        INT4 NOT NULL ,
 `created_at`         TIMESTAMP NOT NULL ,
 `updated_at`         TIMESTAMP NOT NULL ,
 `deleted_at`         TIMESTAMP ,
 `source_id`          INT4 NOT NULL ,

-- SKIP: `PRIMARY`
-- SKIP: `fkIdx_512`
-- SKIP: `fkIdx_525`
-- SKIP: `fkIdx_622`
-- SKIP: `fkIdx_1120
);
