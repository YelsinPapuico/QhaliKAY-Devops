create or replace procedure G07_Administrador_EditarCategoria(
	p_id_categories bigint,
	p_name_categories VARCHAR(180),
	p_description VARCHAR(255)
)	
language plpgsql as
$$
begin
	UPDATE g07_categories SET 
	id_categories = p_id_categories,
	name_categories = p_name_categories,
	description = p_description
	WHERE id_categories = p_id_categories;
end
$$