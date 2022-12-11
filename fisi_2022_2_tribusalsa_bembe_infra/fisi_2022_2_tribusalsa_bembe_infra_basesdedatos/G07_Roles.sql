CREATE TABLE G07_Roles(
	id_rol bigint primary key,
	name_rol varchar(180) not null,
	description varchar(255),
	image varchar(255),
	route varchar(255) not null,
	created_at timestamp not null,
	updated_at timestamp not null
);

