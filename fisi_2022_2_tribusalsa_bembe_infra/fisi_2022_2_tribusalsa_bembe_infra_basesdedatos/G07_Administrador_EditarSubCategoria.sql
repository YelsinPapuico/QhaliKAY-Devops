create or replace procedure G07_Administrador_EditarSubCategoria(
	p_id_subcategories bigint,
	p_name_subcategories VARCHAR(180),
	p_description VARCHAR(255)
)	
language plpgsql as
$$
begin
	UPDATE g07_subcategories SET 
	id_subcategories = p_id_subcategories,
	name_subcategories = p_name_subcategories,
	description = p_description
	WHERE id_subcategories = p_id_subcategories;
end
$$