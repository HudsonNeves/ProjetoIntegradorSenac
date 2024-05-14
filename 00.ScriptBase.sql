CREATE TABLE cliente(
    idcliente INTEGER NOT NULL ,
    nome      VARCHAR2 (100) NOT NULL ,
    dtnasc    DATE NOT NULL ,
    fone      CHAR (11)
);
 
ALTER TABLE cliente ADD CONSTRAINT cliente_PK PRIMARY KEY ( idcliente ) ;
 
 
CREATE TABLE itens_venda(
    idvenda   INTEGER NOT NULL ,
    idproduto INTEGER NOT NULL ,
    preco     NUMBER (10,2) NOT NULL ,
    qtde      INTEGER NOT NULL
);
 
ALTER TABLE itens_venda ADD CONSTRAINT itens_venda_PK PRIMARY KEY (idvenda, idproduto) ;
 
 
CREATE TABLE marca(
    idmarca   INTEGER NOT NULL ,
    descricao VARCHAR2 (100) NOT NULL
);
 
ALTER TABLE marca ADD CONSTRAINT marca_PK PRIMARY KEY ( idmarca ) ;
 
CREATE TABLE modelo(
    idmod         INTEGER NOT NULL ,
    descricao     VARCHAR2 (100) NOT NULL ,
    marca_idmarca INTEGER NOT NULL
);
 
ALTER TABLE modelo ADD CONSTRAINT modelo_PK PRIMARY KEY ( idmod ) ;
 
 
CREATE TABLE pfisica(
    cliente_idcliente INTEGER NOT NULL ,
    rg                VARCHAR2 (20) NOT NULL ,
    cpf               CHAR (11) NOT NULL
);
 
ALTER TABLE pfisica ADD CONSTRAINT pfisica_PK PRIMARY KEY ( cliente_idcliente ) ;
 
 
CREATE TABLE pjuridica(
    cliente_idcliente INTEGER NOT NULL ,
    cnpj              CHAR (15) NOT NULL ,
    ie                VARCHAR2 (20)
);
 
ALTER TABLE pjuridica ADD CONSTRAINT pjuridica_PK PRIMARY KEY ( cliente_idcliente ) ;
 
 
CREATE TABLE produto(
    idprod       INTEGER NOT NULL ,
    nome         VARCHAR2 (50) NOT NULL ,
    preco        NUMBER NOT NULL ,
    descricao    VARCHAR2 (255) ,
    qtde_estoque INTEGER NOT NULL ,
    qtde_min     INTEGER NOT NULL ,
    modelo_idmod INTEGER NOT NULL
);
 
ALTER TABLE produto ADD CONSTRAINT produto_PK PRIMARY KEY ( idprod ) ;
ALTER TABLE produto ADD CONSTRAINT produto__UN UNIQUE ( modelo_idmod ) ;
 
 
CREATE TABLE venda(
    idvenda           INTEGER NOT NULL ,
    dtvenda           DATE ,
    cliente_idcliente INTEGER NOT NULL
);
 
ALTER TABLE venda ADD CONSTRAINT venda_PK PRIMARY KEY ( idvenda ) ;
 
 
ALTER TABLE itens_venda ADD CONSTRAINT itens_venda_produto_FK FOREIGN KEY ( idproduto ) REFERENCES produto ( idprod ) ;
 
ALTER TABLE itens_venda ADD CONSTRAINT itens_venda_venda_FK FOREIGN KEY ( idvenda ) REFERENCES venda ( idvenda ) ;
 
ALTER TABLE modelo ADD CONSTRAINT modelo_marca_FK FOREIGN KEY ( marca_idmarca ) REFERENCES marca ( idmarca ) ;
 
ALTER TABLE pfisica ADD CONSTRAINT pfisica_cliente_FK FOREIGN KEY ( cliente_idcliente ) REFERENCES cliente ( idcliente ) ;
 
ALTER TABLE pjuridica ADD CONSTRAINT pjuridica_cliente_FK FOREIGN KEY ( cliente_idcliente ) REFERENCES cliente ( idcliente ) ;
 
ALTER TABLE produto ADD CONSTRAINT produto_modelo_FK FOREIGN KEY ( modelo_idmod ) REFERENCES modelo ( idmod ) ;
 
ALTER TABLE venda ADD CONSTRAINT venda_cliente_FK FOREIGN KEY ( cliente_idcliente ) REFERENCES cliente ( idcliente ) ;


INSERT INTO cliente (idcliente, nome, dtnasc, fone)
VALUES (01, 'Douglas D.', '11/02/1990', 04432523250);
 
INSERT INTO cliente (idcliente, nome, dtnasc, fone)
VALUES (02, 'Daniele A.', '14/02/1995', 04432523251);
 
INSERT INTO cliente (idcliente, nome, dtnasc, fone)
VALUES (03, 'Vera L.', '11/02/1980', 04432523353);
 
INSERT INTO cliente (idcliente, nome, dtnasc, fone)
VALUES (04, 'Sidney D.', '16/02/1985', 04499000038);
 
INSERT INTO cliente (idcliente, nome, dtnasc, fone)
VALUES (05, 'Teresa Lucchini', '26/05/1880', 04499000039);
 

INSERT INTO itens_venda (idvenda, idproduto, preco, qtde)
VALUES (100, 0600, '3,50', 1);

INSERT INTO itens_venda (idvenda, idproduto, preco, qtde)
VALUES (101, 0601, '13,50', 2);

INSERT INTO itens_venda (idvenda, idproduto, preco, qtde)
VALUES (102, 0602, '30,50', 4);

INSERT INTO itens_venda (idvenda, idproduto, preco, qtde)
VALUES (103, 0603, '99,50', 6);

INSERT INTO itens_venda (idvenda, idproduto, preco, qtde)
VALUES (104, 0604, '100,99', 8);

INSERT INTO itens_venda (idvenda, idproduto, preco, qtde)
VALUES (105, 0605, '99,99', 10);

INSERT INTO itens_venda (idvenda, idproduto, preco, qtde)
VALUES (106, 0606, '99,99', 12);

INSERT INTO itens_venda (idvenda, idproduto, preco, qtde)
VALUES (107, 0607, '666,00', 14);

INSERT INTO itens_venda (idvenda, idproduto, preco, qtde)
VALUES (108, 0608, '888,88', 16);

INSERT INTO itens_venda (idvenda, idproduto, preco, qtde)
VALUES (109, 0609, '888,88', 18);

INSERT INTO itens_venda (idvenda, idproduto, preco, qtde)
VALUES (110, 0610, '888,88', 20);



INSERT INTO marca (idmarca, descricao)
VALUES (901, 'Dell');

INSERT INTO marca (idmarca, descricao)
VALUES (902, 'HP');

INSERT INTO marca (idmarca, descricao)
VALUES (903, 'Dell');

INSERT INTO marca (idmarca, descricao)
VALUES (904, 'Acer');

INSERT INTO marca (idmarca, descricao)
VALUES (905, 'Lenovo');

INSERT INTO marca (idmarca, descricao)
VALUES (906, 'Lenovo');


INSERT INTO modelo (idmod, descricao, marca_idmarca)
VALUES (2001, 'DE001', 905);

INSERT INTO modelo (idmod, descricao, marca_idmarca)
VALUES (2002, 'HP002', 904);

INSERT INTO modelo (idmod, descricao, marca_idmarca)
VALUES (2003, 'DE003', 903);

INSERT INTO modelo (idmod, descricao, marca_idmarca)
VALUES (2004, 'AC004', 902);

INSERT INTO modelo (idmod, descricao, marca_idmarca)
VALUES (2005, 'LE005', 901);

INSERT INTO modelo (idmod, descricao, marca_idmarca)
VALUES (2006, 'LE006', 900);


INSERT INTO pfisica (cliente_idcliente, rg, cpf)
VALUES (0100, 1234567890, 01234567890);

INSERT INTO pfisica(cliente_idcliente, rg, cpf)
VALUES (0101, 1234567891, 01234567891);

INSERT INTO pfisica(cliente_idcliente, rg, cpf)
VALUES (0102, 1234567892, 01234567892);

INSERT INTO pfisica(cliente_idcliente, rg, cpf)
VALUES (0103, 1234567893, 01234567893);

INSERT INTO pfisica(cliente_idcliente, rg, cpf)
VALUES (0104, 1234567894, 01234567894);

INSERT INTO pfisica(cliente_idcliente, rg, cpf)
VALUES (0105, 1234567895, 01234567895);


INSERT INTO pjuridica(cliente_idcliente, cnpj, ie)
VALUES (0201, 123456789012345, 102030405060708090);

INSERT INTO pjuridica(cliente_idcliente, cnpj, ie)
VALUES (0202, 123456789012346, 102030405060708091);

INSERT INTO pjuridica(cliente_idcliente, cnpj, ie)
VALUES (0203, 123456789012347, 102030405060708092);

INSERT INTO pjuridica(cliente_idcliente, cnpj, ie)
VALUES (0204, 123456789012348, 102030405060708093);

INSERT INTO pjuridica(cliente_idcliente, cnpj, ie)
VALUES (0205, 123456789012349, 102030405060708094);


INSERT INTO produto(idprod, nome, preco, descricao, qtde_estoque, qtde_min, modelo_idmod)
VALUES (001, 'Notebook', 50, 'Notebook preto', 10, 20, 'xxxA');

INSERT INTO produto(idprod, nome, preco, descricao, qtde_estoque, qtde_min, modelo_idmod)
VALUES (002, 'Notebook', 30, 'Notebook azul', 10, 20, 'xxxB');

INSERT INTO produto(idprod, nome, preco, descricao, qtde_estoque, qtde_min, modelo_idmod)
VALUES (003, 'Mouse', 25, 'Mouse óptico', 5, 15, 'xxxC');

INSERT INTO produto(idprod, nome, preco, descricao, qtde_estoque, qtde_min, modelo_idmod)
VALUES (004, 'Teclado', 80, 'Teclado com cabo USB', 5, 50, 'xxxD');

INSERT INTO produto(idprod, nome, preco, descricao, qtde_estoque, qtde_min, modelo_idmod)
VALUES (005, 'Mousw WiFi', 120, 'Mouse WiFi com bateria AA', 2, 33, 'xxxE');



SELECT * FROM cliente;

SELECT nome, fone FROM cliente;
-- Para mostrar apenas informações de nome e telefone.

SELECT * FROM itens_venda;

SELECT * FROM modelo;

SELECT * FROM pfisica;

SELECT * FROM pjuridica;

-- Atribuindo apelidos nos atributos
SELECT nome AS "Nome do Cliente", fone "Telefone e Celular", DTNASC "Data de Nascimento" FROM cliente;
/*

O SELECT AS acima "altera" o nome de coluna da tabela. Ou seja, mudar o "nome" para "Nome do Cliente". 
Mas é só para mostrar e facilitar a "leitura", nada altera a tabela.

Colocar a cláusula AS ou não colocar resulta no mesmo, pelo fato do AS ser padrão (default).
*/

-- Ordenar o resultado da consulta alfabeticamente em ordem crescente (atributo ASC):
SELECT nome AS "Nome do Cliente", fone "Telefone e Celular", DTNASC "Data de Nascimento" FROM cliente ORDER BY nome ASC;

-- Ordenar o resultado da consulta alfabeticamente em ordem descrente (atributo DESC):
SELECT nome AS "Nome do Cliente" FROM cliente ORDER BY nome DESC;
SELECT fone AS "Telefones" FROM cliente ORDER BY fone DESC;

-- Ordenar o resultado da consulta em ordem númerica (atributo 1):
SELECT nome AS "Nome do Cliente", fone "Telefone" FROM cliente ORDER BY 1;

SELECT * FROM pjuridica;

SELECT * FROM pfisica;

-- Para exibir o nome, o RG e o CPF de todas as pessoas físicas/jurídicas, existem duas formas para executar.
-- Forma 01 (Produto Cartesiano):

SELECT cliente.nome, pjuridica.cnpj, pjuridica.ie FROM cliente, pjuridica;
-- Cliente é o nome da tabela. Nome é o nome do atributo (onde contém dados pessoais dos clientes), se executado o resultado
-- mostrará uma lista de nome. Do FROM, é de onde o SQL vai pegar os dados solicitados. Ou seja, para saber o nome de clientes,
-- o SQL deverá acessar a tabela "clientes".

SELECT cliente.nome, pfisica.rg, pfisica.cpf FROM cliente, pfisica;
-- Executando a linha acima, a lista será repetida. Então, para evitar a ocorrer, temos que omitir usando WHERE abaixo:

-- Omitindo a inconsistência utilizando a condição "WHERE", assim evita a repetição de dados:
SELECT cliente.nome, pfisica.rg, pfisica.cpf FROM cliente, pfisica WHERE cliente.IDCLIENTE = pfisica.CLIENTE_IDCLIENTE;

-- Listar todos os produtos com preço maior de 50,00
SELECT * FROM produto WHERE preco > 50;

-- Listar todos os produtos com preço maior ou igual a 50,00 e menor que 100,00
SELECT * FROM produto WHERE preço >= 50 AND preco < 100;

-- Junção Interna (INNER JOIN):
SELECT * FROM marca;
SELECT marca.descricao "Marca", modelo.descricao "Modelo" FROM marca INNER JOIN modelo ON marca.IDMARCA=modelo.MARCA_IDMARCA;

-- Mostrando apenas os modelos da determinada marca ignorando outras marcas:
SELECT marca.descricao "Marca", modelo.descricao "Modelo" FROM marca INNER JOIN modelo ON marca.IDMARCA=modelo.MARCA_IDMARCA
WHERE marca.descricao='HP' or marca.descricao='Lenovo'; 

-- Usando INNER JOIN para escrever um SELECT que projete a marca, o modelo, o nome do produto e o preço.
SELECT * FROM marca;
SELECT marca.descricao "Marca", modelo.descricao "Modelo", produto.nome "Produto", produto.preco "Preço"
FROM marca INNER JOIN modelo ON marca.IDMARCA=modelo.MARCA_IDMARCA
           INNER JOIN produto ON modelo.IDMOD=produto.MODELO_IDMOD;

/* DICA DO INNER JOIN: quando juntamos duas tabelas, usamos um INNER JOIN. Juntar quatro tabelas só precisa três INNER JOIN. Se juntar
10 tabelas, é necessário 9 INNER JOIN. Ou seja, sempre é menos um a total de tabelas que será juntada.

/*

Entre o SELECT e o FROM fazemos projeção.
O símbolo * projeta todos os atributos da tabela respeitando a ordem que ele foi criado.

— Quando colocamos os atributos então o resultado mostra na ordem dos atributos que foram projetados. Por exemplo:
— SELECT fone, nome FROM cliente;

— A cláusula WHERE determina condição. As cláusulas são: = < > <> (diferente) != (diferente)
— Exemplo:
      — SELECT * FROM cliente where nome = 'Douglas';
      — SELECT * FROM cliente where nome != 'Daniele';
      — SELECT * FROM cliente where nome <> 'Vera';
      
*/

/*
Questão 2: ordenar produtos de maior para menor preço.

Questão 3: ordenar produtos de menor para maior preço.

Questão 4:  ordenar estoques de menor para maior quantidade ("Apresentar uma lista de produtos e a quantidade em estoque que os mesmos possuem, ordenando de acordo com a quantidade, ou seja, exiba primeiro os produtos que possuem menos quantidade ou estão em falta.")

Questão 5: listar e ordenar alfabeticamente o nome e o fone dos clientes.

Questão 6: Relacione o nome do cliente e caso seja pessoa física, mostre o RG e CPF, caso seja pessoa jurídica, exiba o IE e o CNPJ. Coloque um cabeçalho adequado para cada coluna e ordene alfabeticamente.

Questão 7: exiba o nome doc liente e a data de todas as vendes que este cliente já participou.

Questão 8: relacione todos os produtos cadastrados, exibindo seu nome, seu modelo e sua marca.
*/