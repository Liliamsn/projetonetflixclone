USE secao04;

DROP DATABASE juncao;
DROP TABLE clientes;

SELECT * FROM produtos;
SELECT * FROM tipos_produtos;

SELECT p.codigo AS 'Código', p.descricao AS 'Descrição', p.preco AS 'Preço', tp.descricao AS 'Tipo'
	FROM produtos AS p, tipos_produtos AS tp
    WHERE p.codigo_tipo = tp.codigo;

CREATE DATABASE juncao;

USE juncao;

CREATE TABLE profissoes(
	id INT NOT NULL AUTO_INCREMENT,
    cargo VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE clientes(
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    sobrenome VARCHAR(50) NOT NULL,
    data_nascimento DATE NOT NULL,
    telefone VARCHAR(50) NOT NULL,
    id_profissao INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_profissao) REFERENCES profissoes (id)
);

INSERT INTO profissoes (cargo) VALUES ('Programador');
INSERT INTO profissoes (cargo) VALUES ('Analista de Sistemas');
INSERT INTO profissoes (cargo) VALUES ('Suporte');
INSERT INTO profissoes (cargo) VALUES ('Gerente');

INSERT INTO clientes (nome, sobrenome, data_nascimento, telefone, id_profissao) 
	VALUES ('Carla', 'Pereira de Carvalho', '1978-05-24', 22345669, 3);
INSERT INTO clientes (nome, sobrenome, data_nascimento, telefone, id_profissao)
	VALUES ('Ricardo', 'da Silva', '1987-08-01', 35840689, 2);
INSERT INTO clientes (nome, sobrenome, data_nascimento, telefone, id_profissao)
	VALUES ('Maria', 'da Graça Oliveira', '1952-04-14', 32373682, 1);
INSERT INTO clientes (nome, sobrenome, data_nascimento, telefone, id_profissao)
	VALUES ('Antônia', 'Cordeiro dos Santos', '1982-10-25', 31852451, 1);
    
SELECT * FROM clientes;

SELECT c.id AS 'Cliente', CONCAT(c.nome, ' ', c.sobrenome) AS 'Nome Completo', c.data_nascimento AS 'Data de Nascimento', p.cargo AS 'Profissão'
	FROM clientes AS c, profissoes AS p
    WHERE c.id_profissao = p.id;
    
SELECT c.id AS 'Código', CONCAT(c.nome, ' ', c.sobrenome) AS 'Nome Completo', p.cargo AS 'Profissão'
	FROM clientes AS c RIGHT OUTER JOIN profissoes AS p
    ON c.id_profissao = p.id;

SELECT c.id AS 'Código', CONCAT(c.nome, ' ', c.sobrenome) AS 'Nome Completo', p.cargo AS 'Profissão'
FROM clientes AS c LEFT OUTER JOIN profissoes AS p
ON c.id_profissao = p.id
UNION
SELECT c.id AS 'Código', CONCAT(c.nome, ' ', c.sobrenome) AS 'Nome Completo', p.cargo AS 'Profissão'
FROM clientes AS c RIGHT OUTER JOIN profissoes AS p
ON c.id_profissao = p.id;


