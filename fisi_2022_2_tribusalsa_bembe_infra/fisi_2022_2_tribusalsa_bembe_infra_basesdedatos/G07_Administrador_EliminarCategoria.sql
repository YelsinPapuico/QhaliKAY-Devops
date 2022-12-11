create or replace procedure G07_Administrador_EliminarCategoria(
	p_categories bigint
)	
language plpgsql as
$$
begin
	delete from G07_Categories where id_categories=p_categories;
end;
$$