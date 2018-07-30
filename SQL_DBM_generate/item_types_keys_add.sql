FORWARD ENGINEER
Selected: 1 table(s)
-- ****************** SqlDBM: MySQL ******************;
-- ***************************************************;


-- ************************************** `item_types`



ALTER TABLE `item_types`
 ADD KEY `fkIdx_1703` (`source_id`),
 ADD CONSTRAINT `FK_1703` FOREIGN KEY `fkIdx_1703` (`source_id`) REFERENCES `sources` (`id`);
