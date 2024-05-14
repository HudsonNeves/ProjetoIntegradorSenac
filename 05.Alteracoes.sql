use homolg;
CREATE TABLE cliente(
    idcliente INT NOT NULL ,
    nome      VARCHAR (100) NOT NULL ,
    dtnasc    DATE NOT NULL ,
    fone      CHAR (11)
);
 
ALTER TABLE cliente ADD CONSTRAINT cliente_PK PRIMARY KEY ( idcliente ) ;
 
CREATE TABLE itens_venda(
    idvenda   INT NOT NULL ,
    idproduto INT NOT NULL ,
    preco     decimal (10,2) NOT NULL ,
    qtde      INT NOT NULL
);
 
ALTER TABLE itens_venda ADD CONSTRAINT itens_venda_PK PRIMARY KEY (idvenda, idproduto) ;
 CREATE TABLE marca(
    idmarca   INT NOT NULL ,
    descricao VARCHAR (100) NOT NULL
);
 ALTER TABLE marca ADD CONSTRAINT marca_PK PRIMARY KEY ( idmarca ) ;
 CREATE TABLE modelo(
    idmod         INTEGER NOT NULL ,
    descricao     VARCHAR (100) NOT NULL ,
    marca_idmarca INT NOT NULL
);
ALTER TABLE modelo ADD CONSTRAINT modelo_PK PRIMARY KEY ( idmod ) ;
CREATE TABLE pfisica(
    cliente_idcliente INT NOT NULL ,
    rg                VARCHAR (20) NOT NULL ,
    cpf               CHAR (11) NOT NULL
);
ALTER TABLE pfisica ADD CONSTRAINT pfisica_PK PRIMARY KEY ( cliente_idcliente ) ;
CREATE TABLE pjuridica(
    cliente_idcliente INT NOT NULL ,
    cnpj              CHAR (15) NOT NULL ,
    ie                VARCHAR (20)
); 
ALTER TABLE pjuridica ADD CONSTRAINT pjuridica_PK PRIMARY KEY ( cliente_idcliente ) ;
CREATE TABLE produto(
    idprod       INTEGER NOT NULL ,
    nome         VARCHAR (50) NOT NULL ,
    preco        decimal (10,2) NOT NULL ,
    descricao    VARCHAR (255) ,
    qtde_estoque INT NOT NULL ,
    qtde_min     INT NOT NULL ,
    modelo_idmod INT NOT NULL
);
ALTER TABLE produto ADD CONSTRAINT produto_PK PRIMARY KEY ( idprod ) ;
ALTER TABLE produto ADD CONSTRAINT produto__UN UNIQUE ( modelo_idmod ) ;
CREATE TABLE venda(
    idvenda           INT NOT NULL ,
    dtvenda           DATE ,
    cliente_idcliente INT NOT NULL
);









-- Corrigir database Homologação
 
ALTER TABLE venda ADD CONSTRAINT venda_PK PRIMARY KEY ( idvenda ) ;
  
ALTER TABLE itens_venda ADD CONSTRAINT itens_venda_produto_FK FOREIGN KEY ( idproduto ) REFERENCES produto ( idprod ) ;
 
ALTER TABLE itens_venda ADD CONSTRAINT itens_venda_venda_FK FOREIGN KEY ( idvenda ) REFERENCES venda ( idvenda ) ;
 
ALTER TABLE modelo ADD CONSTRAINT modelo_marca_FK FOREIGN KEY ( marca_idmarca ) REFERENCES marca ( idmarca ) ;
 
ALTER TABLE pfisica ADD CONSTRAINT pfisica_cliente_FK FOREIGN KEY ( cliente_idcliente ) REFERENCES cliente ( idcliente ) ;
 
ALTER TABLE pjuridica ADD CONSTRAINT pjuridica_cliente_FK FOREIGN KEY ( cliente_idcliente ) REFERENCES cliente ( idcliente ) ;
 
ALTER TABLE produto ADD CONSTRAINT produto_modelo_FK FOREIGN KEY ( modelo_idmod ) REFERENCES modelo ( idmod ) ;
 
ALTER TABLE venda ADD CONSTRAINT venda_cliente_FK FOREIGN KEY ( cliente_idcliente ) REFERENCES cliente ( idcliente ) ;








