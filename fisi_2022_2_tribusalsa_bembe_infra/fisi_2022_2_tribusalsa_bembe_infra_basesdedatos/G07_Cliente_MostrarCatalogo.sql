create or replace procedure G07_Cliente_MostrarCatalogo(
)	
language plpgsql as
$$
begin
	SELECT * FROM G07_Categories order by id_categories desc;
end
$$