-- ****************** SqlDBM: MySQL ******************;
-- ***************************************************;


-- ************************************** `charge_types`



ALTER TABLE `charge_types`
 ADD KEY `fkIdx_2000` (`source_id`),
 ADD CONSTRAINT `FK_2000` FOREIGN KEY `fkIdx_2000` (`source_id`) REFERENCES `sources` (`id`);



-- ************************************** `promotion_types`



ALTER TABLE `promotion_types`
 ADD KEY `fkIdx_1699` (`source_id`),
 ADD CONSTRAINT `FK_1699` FOREIGN KEY `fkIdx_1699` (`source_id`) REFERENCES `sources` (`id`);
