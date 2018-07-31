-- ****************** SqlDBM: MySQL ******************;
-- ***************************************************;


-- ************************************** `contact_address_types`

CREATE TABLE `contact_address_types`
(
 `id`                     NOT NULL ,
 `contact_address_type`  VARCHAR(45) NOT NULL ,
 `is_required`           BOOLEAN NOT NULL ,
 `is_single_valued_only` BOOLEAN NOT NULL ,
 `created_at`            TIMESTAMP NOT NULL ,
 `updated_at`            TIMESTAMP NOT NULL ,
 `deleted_at`            TIMESTAMP ,

-- SKIP: `PRIMARY
);





-- ************************************** `contact_detail_types`

CREATE TABLE `contact_detail_types`
(
 `id`                    INT4 NOT NULL ,
 `contact_detail_type`   VARCHAR(45) NOT NULL ,
 `is_required`           BOOLEAN NOT NULL ,
 `is_single_valued_only` BOOLEAN NOT NULL ,
 `created_at`            TIMESTAMP NOT NULL ,
 `updated_at`            TIMESTAMP NOT NULL ,
 `deleted_at`            TIMESTAMP ,

-- SKIP: `PRIMARY
);





-- ************************************** `object_types`

CREATE TABLE `object_types`
(
 `id`          INT4 NOT NULL ,
 `object_type` VARCHAR(45) NOT NULL ,
 `created_at`  TIMESTAMP NOT NULL ,
 `updated_at`  TIMESTAMP NOT NULL ,
 `deleted_at`  TIMESTAMP ,

-- SKIP: `PRIMARY
);





-- ************************************** `item_types`

CREATE TABLE `item_types`
(
 `id`         INT4 NOT NULL ,
 `item_type`  VARCHAR(45) NOT NULL ,
 `table_join` VARCHAR(45) NOT NULL ,
 `created_at` TIMESTAMP NOT NULL ,
 `updated_at` TIMESTAMP NOT NULL ,
 `deleted_at` TIMESTAMP ,
 `source_id`  INT4 NOT NULL ,

-- SKIP: `PRIMARY`
-- SKIP: `fkIdx_1703
);





-- ************************************** `charge_types`

CREATE TABLE `charge_types`
(
 `id`           NOT NULL ,
 `charge_type` VARCHAR(45) NOT NULL ,
 `created_at`  TIMESTAMP NOT NULL ,
 `updated_at`  TIMESTAMP NOT NULL ,
 `deleted_at`  TIMESTAMP ,
 `source_id`   INT4 NOT NULL ,

-- SKIP: `PRIMARY`
-- SKIP: `fkIdx_2000
);





-- ************************************** `promotion_types`

CREATE TABLE `promotion_types`
(
 `id`                    INT4 NOT NULL ,
 `promotion_type`        VARCHAR(45) NOT NULL ,
 `is_single_valued_only` BOOLEAN NOT NULL ,
 `created_at`            TIMESTAMP NOT NULL ,
 `updated_at`            TIMESTAMP NOT NULL ,
 `deleted_at`            TIMESTAMP ,
 `source_id`             INT4 NOT NULL ,

-- SKIP: `PRIMARY`
-- SKIP: `fkIdx_1699
);





-- ************************************** `payment_types`

CREATE TABLE `payment_types`
(
 `id`            NOT NULL ,
 `payment_type` VARCHAR(45) NOT NULL ,
 `created_at`   TIMESTAMP NOT NULL ,
 `updated_at`   TIMESTAMP NOT NULL ,
 `deleted_at`   TIMESTAMP ,
 `source_id`    INT4 NOT NULL ,

-- SKIP: `PRIMARY`
-- SKIP: `fkIdx_2041
);





-- ************************************** `stock_types`

CREATE TABLE `stock_types`
(
 `id`                   INT4 NOT NULL ,
 `stock_type`           VARCHAR(45) NOT NULL ,
 `is_required`          BOOLEAN NOT NULL ,
 `is_single_value_only` BOOLEAN NOT NULL ,
 `created_at`           TIMESTAMP NOT NULL ,
 `updated_at`           TIMESTAMP NOT NULL ,
 `deleted_at`           TIMESTAMP ,
 `source_id`            INT4 NOT NULL ,

-- SKIP: `PRIMARY`
-- SKIP: `fkIdx_1753
);





-- ************************************** `dimension_item_types`

CREATE TABLE `dimension_item_types`
(
 `id`                    INT4 NOT NULL ,
 `dimenson_id`           INT4 NOT NULL ,
 `item_type_id`          INT4 NOT NULL ,
 `is_required`           BOOLEAN NOT NULL ,
 `is_single_valued_only` BOOLEAN NOT NULL ,
 `created_at`            TIMESTAMP NOT NULL ,
 `updated_at`            TIMESTAMP NOT NULL ,
 `deleted_at`            TIMESTAMP ,
 `source_id`             INT4 NOT NULL ,

-- SKIP: `PRIMARY`
-- SKIP: `fkIdx_1409`
-- SKIP: `fkIdx_1413`
-- SKIP: `fkIdx_1675
);
