-- ****************** SqlDBM: MySQL ******************;
-- ***************************************************;


-- ************************************** `contact_address_types`





-- ************************************** `contact_detail_types`





-- ************************************** `object_types`





-- ************************************** `charge_types`



ALTER TABLE `charge_types`
 ADD KEY `fkIdx_2000` (`source_id`),
 ADD CONSTRAINT `FK_2000` FOREIGN KEY `fkIdx_2000` (`source_id`) REFERENCES `sources` (`id`);



-- ************************************** `promotion_types`



ALTER TABLE `promotion_types`
 ADD KEY `fkIdx_1699` (`source_id`),
 ADD CONSTRAINT `FK_1699` FOREIGN KEY `fkIdx_1699` (`source_id`) REFERENCES `sources` (`id`);



-- ************************************** `payment_types`



ALTER TABLE `payment_types`
 ADD KEY `fkIdx_2041` (`source_id`),
 ADD CONSTRAINT `FK_2041` FOREIGN KEY `fkIdx_2041` (`source_id`) REFERENCES `sources` (`id`);



-- ************************************** `stock_types`



ALTER TABLE `stock_types`
 ADD KEY `fkIdx_1753` (`source_id`),
 ADD CONSTRAINT `FK_1753` FOREIGN KEY `fkIdx_1753` (`source_id`) REFERENCES `sources` (`id`);



-- ************************************** `dimension_item_types`



ALTER TABLE `dimension_item_types`
 ADD KEY `fkIdx_1413` (`item_type_id`),
 ADD CONSTRAINT `FK_1413` FOREIGN KEY `fkIdx_1413` (`item_type_id`) REFERENCES `item_types` (`id`);

ALTER TABLE `dimension_item_types`
 ADD KEY `fkIdx_1675` (`source_id`),
 ADD CONSTRAINT `FK_1675` FOREIGN KEY `fkIdx_1675` (`source_id`) REFERENCES `sources` (`id`);
