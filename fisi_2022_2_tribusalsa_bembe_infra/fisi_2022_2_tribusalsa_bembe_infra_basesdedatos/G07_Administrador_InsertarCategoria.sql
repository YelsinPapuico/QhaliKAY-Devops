create or replace procedure G07_Administrador_InsertarCategoria(
	p_id_categories bigint,
	p_name_categories VARCHAR(180),
	p_description VARCHAR(255)
)	
language plpgsql as
$$
begin
	INSERT INTO G07_categories
	VALUES(p_id_categories,
	p_name_categories,
	p_description);
end
$$