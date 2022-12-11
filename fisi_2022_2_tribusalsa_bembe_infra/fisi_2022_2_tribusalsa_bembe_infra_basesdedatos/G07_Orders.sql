CREATE TABLE G07_Orders(
	id_order bigint primary key,
	dni varchar(8) not null,
	id_delivery bigint not null,
	id_address bigint not null,
	lat decimal(10,0),
	lng decimal(10,0),
	status varchar(255) not null,
	timestamp_time bigint not null,
	id_categories bigint not null,
	created_at timestamp not null,
	updated_at timestamp not null
);

ALTER TABLE G07_Orders
	ADD CONSTRAINT fk_dni
	FOREIGN KEY(dni) references G07_CatalogoClientes(dni);

ALTER TABLE G07_Orders
	ADD CONSTRAINT fk_address
	FOREIGN KEY(id_address) references G07_Address(id_address);

