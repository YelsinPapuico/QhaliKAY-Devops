CREATE TABLE G07_Categories(
	id_categories bigint primary key,
	name_categories varchar(180) not null,
	description varchar(255) not null,
	created_at timestamp not null,
	updated_at timestamp not null
);


