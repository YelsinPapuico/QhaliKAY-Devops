create or replace procedure G07_Cliente_MostrarSubCategorias(
	p_id_categories bigint
)	
language plpgsql as
$$
begin
	SELECT * FROM G07_SubCategories where id_categories=p_id_categories order by id_subcategories desc;
end
$$