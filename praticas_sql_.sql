CREATE DATABASE IF NOT EXISTS secao_05; --Cria o Banco de Dados--

USE secao_05; --Seleciona o Banco de Dados Criado--

CREATE TABLE tipos_produto (codigo INT NOT NULL AUTO_INCREMENT, --Criando Tabelas--
descricao VARCHAR(50) NOT NULL,
PRIMARY KEY (codigo)
);

CREATE TABLE produtos(codigo INT NOT NULL AUTO_INCREMENT,
descricao VARCHAR(30) NOT NULL,
preco DECIMAL(8,2),
codigo_tipo INT NOT NULL,
PRIMARY KEY (codigo),
FOREIGN KEY (codigo_tipo) REFERENCES tipos_produto(codigo)
);

SELECT * FROM tipos_produto; --Realizando Consultas Simples--

SELECT * FROM produtos;

INSERT INTO tipos_produto (descricao) VALUES ('Computador'); --Inserindo ou Populando Tabelas com Dados--

INSERT INTO tipos_produto (descricao) VALUES ('Impressora');

INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Desktop', '1200', '1');

INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Laptop', '1800','1');

INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Impressora Jato de Tinta','300','2');

INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Impressora Laser','500','2');

SELECT * FROM tipos_produto; --Realizando Novas Consultas--

SELECT * FROM produtos;

SELECT * FROM produtos WHERE codigo_tipo = 2; --Realizando Consultas com a Cláusula WHERE--

SELECT * FROM produtos WHERE codigo_tipo = 2 AND preco > 300;

SELECT p.codigo AS 'Codigo', p.descricao AS 'Descricao', p.preco AS 'Preco', tp.descricao AS 'Tipo Produtos' FROM produtos AS p, tipos_produto AS tp WHERE p.codigo_tipo = tp.codigo; --Consulta com ALIAS & WHERE--
