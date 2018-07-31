Selected: 2 table(s)
-- ****************** SqlDBM: MySQL ******************;
-- ***************************************************;


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
