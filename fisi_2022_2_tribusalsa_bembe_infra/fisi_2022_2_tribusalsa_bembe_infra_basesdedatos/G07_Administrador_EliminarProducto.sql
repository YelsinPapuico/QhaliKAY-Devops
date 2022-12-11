create or replace procedure G07_Administrador_EliminarProducto(
	p_producto bigint
)	
language plpgsql as
$$
begin
	delete from G07_Products where id_products=p_producto;
end;
$$