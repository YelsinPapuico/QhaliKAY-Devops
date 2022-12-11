CREATE TABLE G07_SubCategories(
	id_subcategories bigint primary key,
	id_categories bigint not null,
	name_subcategories varchar(180) not null,
	description varchar(255) not null,
	created_at timestamp not null,
	updated_at timestamp not null
);

ALTER TABLE G07_SubCategories
	ADD CONSTRAINT fk_categories
	FOREIGN KEY (id_categories)
	REFERENCES G07_Categories(id_categories);
