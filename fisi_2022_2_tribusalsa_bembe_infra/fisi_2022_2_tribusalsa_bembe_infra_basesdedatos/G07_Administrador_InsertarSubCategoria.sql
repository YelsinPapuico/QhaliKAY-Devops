create or replace procedure G07_Administrador_InsertarSubCategoria(
	p_id_subcategories bigint,
	p_id_categories bigint,
	p_name_subcategories VARCHAR(180),
	p_description VARCHAR(255)
)	
language plpgsql as
$$
begin
	INSERT INTO G07_subcategories
	VALUES(p_id_subcategories,
	p_id_categories,
	p_name_subcategories,
	p_description);
end
$$