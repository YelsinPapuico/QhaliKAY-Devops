create or replace procedure G07_Cliente_InsertarProducto(
	p_id_products VARCHAR(8),
	p_name_products VARCHAR(180),
	p_description VARCHAR(255),
	p_price NUMERIC(10),
	p_image1 VARCHAR (255),
	p_image2 VARCHAR(255),
	p_image3 VARCHAR(255),
	p_id_categories bigint,
	p_id_subcategories bigint
)	
language plpgsql as
$$
begin
	INSERT INTO G07_products
	VALUES(p_id_products,
	p_name_products,
	p_description,
	p_price,
	p_image1,
	p_image2,
	p_image3,
	p_id_categories,
	p_id_subcategories);
end
$$