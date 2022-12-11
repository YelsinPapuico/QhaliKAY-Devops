CREATE TABLE G07_Order_has_products(
	id_order bigint not null,
	id_product bigint not null,
	quantity bigint not null,
	created_at timestamp not null,
	updated_at timestamp not null
);

ALTER TABLE G07_Order_has_products
	ADD CONSTRAINT fk_order
	FOREIGN KEY(id_order) references G07_Orders(id_order);

ALTER TABLE G07_Order_has_products
	ADD CONSTRAINT fk_products
	FOREIGN KEY(id_product) references G07_Products(id_products);

