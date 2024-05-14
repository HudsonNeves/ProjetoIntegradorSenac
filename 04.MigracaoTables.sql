CREATE TABLE cliente(
    idcliente INT NOT NULL ,
    nome      VARCHAR (100) NOT NULL ,
    dtnasc    DATE NOT NULL ,
    fone      CHAR (11)
);

CREATE TABLE itens_venda(
    idvenda   INT NOT NULL ,
    idproduto INT NOT NULL ,
    preco     decimal (10,2) NOT NULL ,
    qtde      INT NOT NULL
);