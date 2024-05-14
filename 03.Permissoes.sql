/*
DB - HOMOLOGAÇÃO
Squad 2 - Marcos - marcossouza@localhost
		  Phelipe - phelipesantos@localhost 
		  Perolina - perolinasoar@localhost 
          Tatiane - tatianerod@localhost
*/

GRANT SELECT
ON homolg.*
TO phelipesantos@localhost ;

GRANT INSERT
ON homolg.cliente
TO marcossouza@localhost, phelipesantos@localhost;

GRANT INSERT
ON homolg.itens_venda
TO perolinasoar@localhost , tatianerod@localhost;

