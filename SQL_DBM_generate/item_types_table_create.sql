Selected: 1 table(s)
-- ****************** SqlDBM: MySQL ******************;
-- ***************************************************;


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
