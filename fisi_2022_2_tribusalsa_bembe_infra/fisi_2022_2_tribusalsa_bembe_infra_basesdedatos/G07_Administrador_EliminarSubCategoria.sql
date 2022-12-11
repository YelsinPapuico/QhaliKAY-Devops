create or replace procedure G07_Administrador_EliminarSubCategoria(
	p_id_subcategories bigint
)	
language plpgsql as
$$
begin
	DELETE from G07_subcategories
	WHERE id_subcategories = p_id_subcategories;
end
$$