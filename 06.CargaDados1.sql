-- insert na base homologação
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


 set foreign_key_checks=0;