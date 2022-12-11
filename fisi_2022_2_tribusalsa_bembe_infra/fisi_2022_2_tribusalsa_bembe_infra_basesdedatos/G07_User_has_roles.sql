CREATE TABLE G07_User_has_roles(
	dni varchar(8) not null,
	id_rol bigint not null,
	created_at timestamp not null,
	updated_at timestamp not null
);

ALTER TABLE G07_User_has_roles
	ADD CONSTRAINT fk_dni
	FOREIGN KEY(dni) references G07_CatalogoClientes(dni);

ALTER TABLE G07_User_has_roles
	ADD CONSTRAINT fk_rol
	FOREIGN KEY(id_rol) references G07_Roles(id_rol);



