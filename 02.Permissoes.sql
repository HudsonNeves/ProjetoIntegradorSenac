/*
GERENCIAMENTO DE PERMISSÕES
DB - DEV
Squad 1 - Lazaro - lazaroneto@localhost
          Wilker- wilkerluc@localhost 
          Estagiario - estagiarioh@localhosto
*/
GRANT SELECT
ON *.*
TO lazaroneto@localhost;
GRANT SELECT
ON *.*
TO wilkerluc@localhost;
GRANT INSERT
ON *.*
TO lazaroneto@localhost;
GRANT INSERT
ON *.*
TO wilkerluc@localhost;

GRANT 
	SELECT (cliente_idcliente, cpf),
    UPDATE(cpf)
ON dev.pfisica
TO estagiarioh@localhost;




