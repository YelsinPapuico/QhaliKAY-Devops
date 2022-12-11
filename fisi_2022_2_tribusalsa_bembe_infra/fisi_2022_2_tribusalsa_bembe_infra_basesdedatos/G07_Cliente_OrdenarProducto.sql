create or replace procedure G07_Cliente_OrdenarProducto(
	orden varchar(180)
)	
language plpgsql as
$$
begin
	if orden='Nombre (A-Z)' THEN
		SELECT * FROM G07_Products order by name_products;
	else if orden='Nombre (Z-A)' THEN
		SELECT * FROM G07_Products order by name_products DESC;
	else if orden='Precio (menor a mayor)' THEN
		SELECT * FROM G07_Products order by price;
	else
		SELECT * FROM G07_Products order by price DESC;
	END IF;
	END IF;
	END IF;

end
$$