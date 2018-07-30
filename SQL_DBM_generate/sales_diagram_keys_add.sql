FORWARD ENGINEER
Selected: 21 table(s)
-- ****************** SqlDBM: MySQL ******************;
-- ***************************************************;


-- ************************************** `currencies`





-- ************************************** `exchange_rates`



ALTER TABLE `exchange_rates`
 ADD KEY `fkIdx_1897` (`from_currency_id`),
 ADD CONSTRAINT `FK_1897` FOREIGN KEY `fkIdx_1897` (`from_currency_id`) REFERENCES `currencies` (`id`);

ALTER TABLE `exchange_rates`
 ADD KEY `fkIdx_1901` (`to_currency_id`),
 ADD CONSTRAINT `FK_1901` FOREIGN KEY `fkIdx_1901` (`to_currency_id`) REFERENCES `currencies` (`id`);



-- ************************************** `sales_regions`



ALTER TABLE `sales_regions`
 ADD KEY `fkIdx_1608` (`parent_region_id`),
 ADD CONSTRAINT `FK_1608` FOREIGN KEY `fkIdx_1608` (`parent_region_id`) REFERENCES `sales_regions` (`id`);

ALTER TABLE `sales_regions`
 ADD KEY `fkIdx_1655` (`source_id`),
 ADD CONSTRAINT `FK_1655` FOREIGN KEY `fkIdx_1655` (`source_id`) REFERENCES `sources` (`id`);



-- ************************************** `contacts`



ALTER TABLE `contacts`
 ADD UNIQUE KEY `uidx_contact_hash_natural_key` (`contact_hash_natural_key`);

ALTER TABLE `contacts`
 ADD KEY `fkIdx_932` (`source_id`),
 ADD CONSTRAINT `FK_932` FOREIGN KEY `fkIdx_932` (`source_id`) REFERENCES `sources` (`id`);



-- ************************************** `channels`



ALTER TABLE `channels`
 ADD KEY `fkIdx_1600` (`parent_channel_id`),
 ADD CONSTRAINT `FK_1600` FOREIGN KEY `fkIdx_1600` (`parent_channel_id`) REFERENCES `channels` (`id`);

ALTER TABLE `channels`
 ADD KEY `fkIdx_1659` (`source_id`),
 ADD CONSTRAINT `FK_1659` FOREIGN KEY `fkIdx_1659` (`source_id`) REFERENCES `sources` (`id`);



-- ************************************** `purchase_line_items`



ALTER TABLE `purchase_line_items`
 ADD KEY `fkIdx_1449` (`source_id`),
 ADD CONSTRAINT `FK_1449` FOREIGN KEY `fkIdx_1449` (`source_id`) REFERENCES `sources` (`id`);

ALTER TABLE `purchase_line_items`
 ADD KEY `fkIdx_1473` (`item_type_id`),
 ADD CONSTRAINT `FK_1473` FOREIGN KEY `fkIdx_1473` (`item_type_id`) REFERENCES `item_types` (`id`);



-- ************************************** `purchases`



ALTER TABLE `purchases`
 ADD KEY `fkIdx_1441` (`source_id_composite_natural_key`),
 ADD CONSTRAINT `FK_1441` FOREIGN KEY `fkIdx_1441` (`source_id_composite_natural_key`) REFERENCES `sources` (`id`);

ALTER TABLE `purchases`
 ADD KEY `fkIdx_1487` (`supplier_contact_id`),
 ADD CONSTRAINT `FK_1487` FOREIGN KEY `fkIdx_1487` (`supplier_contact_id`) REFERENCES `contacts` (`id`);



-- ************************************** `charges`



ALTER TABLE `charges`
 ADD KEY `fkIdx_889` (`charge_type_id`),
 ADD CONSTRAINT `FK_889` FOREIGN KEY `fkIdx_889` (`charge_type_id`) REFERENCES `charge_types` (`id`);

ALTER TABLE `charges`
 ADD KEY `fkIdx_1047` (`item_type_id`),
 ADD CONSTRAINT `FK_1047` FOREIGN KEY `fkIdx_1047` (`item_type_id`) REFERENCES `item_types` (`id`);

ALTER TABLE `charges`
 ADD KEY `fkIdx_1231` (`source_id`),
 ADD CONSTRAINT `FK_1231` FOREIGN KEY `fkIdx_1231` (`source_id`) REFERENCES `sources` (`id`);



-- ************************************** `payments`



ALTER TABLE `payments`
 ADD KEY `fkIdx_664` (`paid_by_contact_id`),
 ADD CONSTRAINT `FK_664` FOREIGN KEY `fkIdx_664` (`paid_by_contact_id`) REFERENCES `contacts` (`id`);

ALTER TABLE `payments`
 ADD KEY `fkIdx_678` (`payment_type_id`),
 ADD CONSTRAINT `FK_678` FOREIGN KEY `fkIdx_678` (`payment_type_id`) REFERENCES `payment_types` (`id`);

ALTER TABLE `payments`
 ADD KEY `fkIdx_978` (`source_id`),
 ADD CONSTRAINT `FK_978` FOREIGN KEY `fkIdx_978` (`source_id`) REFERENCES `sources` (`id`);



-- ************************************** `merchandising_products`



ALTER TABLE `merchandising_products`
 ADD KEY `fkIdx_1035` (`item_type_id`),
 ADD CONSTRAINT `FK_1035` FOREIGN KEY `fkIdx_1035` (`item_type_id`) REFERENCES `item_types` (`id`);

ALTER TABLE `merchandising_products`
 ADD KEY `fkIdx_1219` (`source_id`),
 ADD CONSTRAINT `FK_1219` FOREIGN KEY `fkIdx_1219` (`source_id`) REFERENCES `sources` (`id`);



-- ************************************** `taxes`



ALTER TABLE `taxes`
 ADD KEY `fkIdx_928` (`source_id`),
 ADD CONSTRAINT `FK_928` FOREIGN KEY `fkIdx_928` (`source_id`) REFERENCES `sources` (`id`);

ALTER TABLE `taxes`
 ADD KEY `fkIdx_1792` (`item_type_id`),
 ADD CONSTRAINT `FK_1792` FOREIGN KEY `fkIdx_1792` (`item_type_id`) REFERENCES `item_types` (`id`);



-- ************************************** `products (kaos_product_products)`



ALTER TABLE `products (kaos_product_products)`
 ADD KEY `fkIdx_1031` (`item_type_id`),
 ADD CONSTRAINT `FK_1031` FOREIGN KEY `fkIdx_1031` (`item_type_id`) REFERENCES `item_types` (`id`);

ALTER TABLE `products (kaos_product_products)`
 ADD KEY `fkIdx_1215` (`source_id`),
 ADD CONSTRAINT `FK_1215` FOREIGN KEY `fkIdx_1215` (`source_id`) REFERENCES `sources` (`id`);



-- ************************************** `promotions (kaos_sales_promotions)`



ALTER TABLE `promotions (kaos_sales_promotions)`
 ADD KEY `fkIdx_763` (`promotion_type_id`),
 ADD CONSTRAINT `FK_763` FOREIGN KEY `fkIdx_763` (`promotion_type_id`) REFERENCES `promotion_types` (`id`);

ALTER TABLE `promotions (kaos_sales_promotions)`
 ADD KEY `fkIdx_1043` (`item_type_id`),
 ADD CONSTRAINT `FK_1043` FOREIGN KEY `fkIdx_1043` (`item_type_id`) REFERENCES `item_types` (`id`);

ALTER TABLE `promotions (kaos_sales_promotions)`
 ADD KEY `fkIdx_1223` (`source_id`),
 ADD CONSTRAINT `FK_1223` FOREIGN KEY `fkIdx_1223` (`source_id`) REFERENCES `sources` (`id`);



-- ************************************** `sale_line_items`



ALTER TABLE `sale_line_items`
 ADD KEY `fkIdx_924` (`source_id`),
 ADD CONSTRAINT `FK_924` FOREIGN KEY `fkIdx_924` (`source_id`) REFERENCES `sources` (`id`);

ALTER TABLE `sale_line_items`
 ADD KEY `fkIdx_1055` (`item_type_id`),
 ADD CONSTRAINT `FK_1055` FOREIGN KEY `fkIdx_1055` (`item_type_id`) REFERENCES `item_types` (`id`);



-- ************************************** `addresses`



ALTER TABLE `addresses`
 ADD KEY `fkIdx_344` (`country_id`),
 ADD CONSTRAINT `FK_344` FOREIGN KEY `fkIdx_344` (`country_id`) REFERENCES `countries` (`id`);

ALTER TABLE `addresses`
 ADD KEY `fkIdx_1253` (`source_id`),
 ADD CONSTRAINT `FK_1253` FOREIGN KEY `fkIdx_1253` (`source_id`) REFERENCES `sources` (`id`);



-- ************************************** `sales`



ALTER TABLE `sales`
 ADD UNIQUE KEY `uidx_sale_reference_natural_key` (`sale_reference_natural_key`);

ALTER TABLE `sales`
 ADD KEY `fkIdx_292` (`shipping_address_id`),
 ADD CONSTRAINT `FK_292` FOREIGN KEY `fkIdx_292` (`shipping_address_id`) REFERENCES `addresses` (`id`);

ALTER TABLE `sales`
 ADD KEY `fkIdx_296` (`billing_address_id`),
 ADD CONSTRAINT `FK_296` FOREIGN KEY `fkIdx_296` (`billing_address_id`) REFERENCES `addresses` (`id`);

ALTER TABLE `sales`
 ADD KEY `fkIdx_309` (`customer_contact_id`),
 ADD CONSTRAINT `FK_309` FOREIGN KEY `fkIdx_309` (`customer_contact_id`) REFERENCES `contacts` (`id`);

ALTER TABLE `sales`
 ADD KEY `fkIdx_920` (`source_id`),
 ADD CONSTRAINT `FK_920` FOREIGN KEY `fkIdx_920` (`source_id`) REFERENCES `sources` (`id`);

ALTER TABLE `sales`
 ADD KEY `fkIdx_1143` (`channel_id`),
 ADD CONSTRAINT `FK_1143` FOREIGN KEY `fkIdx_1143` (`channel_id`) REFERENCES `channels` (`id`);

ALTER TABLE `sales`
 ADD KEY `fkIdx_1155` (`region_id`),
 ADD CONSTRAINT `FK_1155` FOREIGN KEY `fkIdx_1155` (`region_id`) REFERENCES `sales_regions` (`id`);



-- ************************************** `reconciliations`



ALTER TABLE `reconciliations`
 ADD KEY `fkIdx_691` (`payment_id`),
 ADD CONSTRAINT `FK_691` FOREIGN KEY `fkIdx_691` (`payment_id`) REFERENCES `payments` (`id`);

ALTER TABLE `reconciliations`
 ADD KEY `fkIdx_699` (`sale_id`),
 ADD CONSTRAINT `FK_699` FOREIGN KEY `fkIdx_699` (`sale_id`) REFERENCES `sales` (`id`);

ALTER TABLE `reconciliations`
 ADD KEY `fkIdx_1257` (`source_id`),
 ADD CONSTRAINT `FK_1257` FOREIGN KEY `fkIdx_1257` (`source_id`) REFERENCES `sources` (`id`);



-- ************************************** `shipments`



ALTER TABLE `shipments`
 ADD UNIQUE KEY `uidx_shipment_reference_natural_key` (`shipment_reference_natural_key`);

ALTER TABLE `shipments`
 ADD KEY `fkIdx_554` (`shipping_carrier_contact_id`),
 ADD CONSTRAINT `FK_554` FOREIGN KEY `fkIdx_554` (`shipping_carrier_contact_id`) REFERENCES `contacts` (`id`);

ALTER TABLE `shipments`
 ADD KEY `fkIdx_558` (`warehouse_id`),
 ADD CONSTRAINT `FK_558` FOREIGN KEY `fkIdx_558` (`warehouse_id`) REFERENCES `warehouses` (`id`);

ALTER TABLE `shipments`
 ADD KEY `idx_shipment_reference_natural_key` (`shipment_reference_natural_key`);

ALTER TABLE `shipments`
 ADD KEY `fkIdx_1108` (`source_id`),
 ADD CONSTRAINT `FK_1108` FOREIGN KEY `fkIdx_1108` (`source_id`) REFERENCES `sources` (`id`);



-- ************************************** `inventory_items`



ALTER TABLE `inventory_items`
 ADD KEY `fkIdx_115` (`warehouse_id`),
 ADD CONSTRAINT `FK_115` FOREIGN KEY `fkIdx_115` (`warehouse_id`) REFERENCES `warehouses` (`id`);

ALTER TABLE `inventory_items`
 ADD KEY `fkIdx_1116` (`source_id`),
 ADD CONSTRAINT `FK_1116` FOREIGN KEY `fkIdx_1116` (`source_id`) REFERENCES `sources` (`id`);

ALTER TABLE `inventory_items`
 ADD KEY `fkIdx_1203` (`item_type_id`),
 ADD CONSTRAINT `FK_1203` FOREIGN KEY `fkIdx_1203` (`item_type_id`) REFERENCES `item_types` (`id`);



-- ************************************** `freight_charges`



ALTER TABLE `freight_charges`
 ADD KEY `fkIdx_95` (`warehouse_id`),
 ADD CONSTRAINT `FK_95` FOREIGN KEY `fkIdx_95` (`warehouse_id`) REFERENCES `warehouses` (`id`);

ALTER TABLE `freight_charges`
 ADD KEY `fkIdx_1039` (`item_type_id`),
 ADD CONSTRAINT `FK_1039` FOREIGN KEY `fkIdx_1039` (`item_type_id`) REFERENCES `item_types` (`id`);

ALTER TABLE `freight_charges`
 ADD KEY `fkIdx_1227` (`source_id`),
 ADD CONSTRAINT `FK_1227` FOREIGN KEY `fkIdx_1227` (`source_id`) REFERENCES `sources` (`id`);



-- ************************************** `shipment_line_items`



ALTER TABLE `shipment_line_items`
 ADD KEY `fkIdx_512` (`sales_line_item_id`),
 ADD CONSTRAINT `FK_512` FOREIGN KEY `fkIdx_512` (`sales_line_item_id`) REFERENCES `sale_line_items` (`id`);

ALTER TABLE `shipment_line_items`
 ADD KEY `fkIdx_525` (`shipment_id`),
 ADD CONSTRAINT `FK_525` FOREIGN KEY `fkIdx_525` (`shipment_id`) REFERENCES `shipments` (`id`);

ALTER TABLE `shipment_line_items`
 ADD KEY `fkIdx_622` (`inventory_item_id`),
 ADD CONSTRAINT `FK_622` FOREIGN KEY `fkIdx_622` (`inventory_item_id`) REFERENCES `inventory_items` (`id`);

ALTER TABLE `shipment_line_items`
 ADD KEY `fkIdx_1120` (`source_id`),
 ADD CONSTRAINT `FK_1120` FOREIGN KEY `fkIdx_1120` (`source_id`) REFERENCES `sources` (`id`);
