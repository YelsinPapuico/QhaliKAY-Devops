create or replace procedure G07_Cliente_InsertarUsuario(
	p_dni VARCHAR(8),
	p_email VARCHAR(255),
	p_nombre VARCHAR(255),
	p_apellido VARCHAR(255),
	p_telefono VARCHAR (80),
	p_image VARCHAR(255),
	p_password VARCHAR(255),
	p_is_available BOOLEAN,
	p_session_token VARCHAR(255)
)	
language plpgsql as
$$
begin
	INSERT INTO G07_CatalogoClientes(dni,email,nombre,apellido,telefono,image,password,is_available,session_token)
	VALUES(p_dni,
	p_email,
	p_nombre,
	p_apellido,
	p_telefono,
	p_image,
	p_password,
	p_is_available,
	p_session_token);
end
$$