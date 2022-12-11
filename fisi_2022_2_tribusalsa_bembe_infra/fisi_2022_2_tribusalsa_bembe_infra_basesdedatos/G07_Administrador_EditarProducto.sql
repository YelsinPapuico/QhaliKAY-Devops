create or replace procedure G07_Administrador_EditarProducto(
	p_id_products bigint,
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
	UPDATE g07_products SET 
	id_products = p_id_products,
	name_products = p_name_products,
	description = p_description,
	price = p_price,
	image1 = p_image1,
	image2 = p_image2,
	image3 = p_image3
	WHERE id_products = p_id_products;
end
$$