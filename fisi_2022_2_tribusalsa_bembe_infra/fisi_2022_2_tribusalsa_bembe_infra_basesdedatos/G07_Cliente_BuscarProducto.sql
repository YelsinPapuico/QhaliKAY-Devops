create or replace procedure G07_Cliente_BuscarProducto(
	p_nombre varchar(255)
)	
language plpgsql as
$$
begin
	SELECT * FROM G07_Productos where name_products like '%'+p_nombre+'%' order by id_products desc;
end
$$