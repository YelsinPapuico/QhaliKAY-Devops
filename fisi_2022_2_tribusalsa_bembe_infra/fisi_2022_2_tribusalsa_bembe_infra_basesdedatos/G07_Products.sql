CREATE TABLE G07_Products(
	id_products bigint primary key,
	name_products varchar(180) not null,
	description varchar(255) not null,
	price decimal(10,0),
	image1 varchar(255),
	image2 varchar(255),
	image3 varchar(255),
	id_categories bigint not null,
	id_subcategories bigint not null,
	created_at timestamp not null,
	updated_at timestamp not null
);

ALTER TABLE G07_Products
	ADD CONSTRAINT fk_category
	FOREIGN KEY(id_categories) references G07_Categories(id_categories);

ALTER TABLE G07_Products
	ADD CONSTRAINT fk_subcategory
	FOREIGN KEY(id_subcategories) references G07_SubCategories(id_subcategories);


