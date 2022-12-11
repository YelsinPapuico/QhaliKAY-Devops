create or replace function G07_Cliente_ComprobarUsuario(varchar,varchar) returns boolean
 as
   'select is_available from G07_CatalogoClientes where email=$1 and password=$2;'
 language sql;
