CREATE TABLE G07_Address(
	id_address bigint primary key,
	address varchar(255) not null,
	dni varchar(8) not null,
	neighborhood varchar(255) not null,
	lat decimal(10,0),
	lng decimal(10,0),
	created_at timestamp not null,
	updated_at timestamp not null
);

ALTER TABLE G07_Address
	ADD CONSTRAINT fk_dni
	FOREIGN KEY (dni)
	REFERENCES G07_CatalogoClientes(dni);
