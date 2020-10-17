
CREATE DATABASE secao03;

USE secao03;

INSERT INTO tipo_produto (descricao) VALUES ('Computador');
INSERT INTO tipo_produto (descricao) VALUES ('Impressora');
INSERT INTO tipo_produto (descricao) VALUES ('Acessórios');

INSERT INTO produto (descricao, preco, id_tipo_produto) VALUES ('Impressora Jato de Tinta', 450, 2);
INSERT INTO produto (descricao, preco, id_tipo_produto) VALUES ('Notebbok Acer', 2400, 1);
INSERT INTO produto (descricao, preco, id_tipo_produto) VALUES ('Mouse sem fio', 80, 3);

SELECT * FROM tipo_produto;
SELECT * FROM produto;
SELECT id, descricao, preco, id_tipo_produto FROM produto;
SELECT id AS 'Código', descricao AS 'Descrição', preco AS 'Preço', id_tipo_produto AS 'Tipo' FROM produto;

INSERT INTO tipo_produto (descricao) VALUES ('Notebook');

UPDATE tipo_produto SET descricao = 'Nobreak' WHERE id = 4;
UPDATE produto SET descricao = 'Notebook Acer' WHERE id = 2;

DELETE FROM produto WHERE id = 3;

INSERT INTO produto (descricao, preco, id_tipo_produto) VALUES ('Mouse sem fio', 80, 3);


