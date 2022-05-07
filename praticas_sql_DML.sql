--Inserindo ou Populando Tabelas--

SELECT * FROM produtos;

INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('MacBook Pro', '7200', '1');

SELECT * FROM produtos;

INSERT INTO tipos_produto (descricao) VALUES ('Apple');

SELECT * FROM tipos_produto;

INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('MacBook Air', '5300', '3');

SELECT * FROM produtos;

--Atualizando Dados nas Tabelas--

UPDATE produtos SET codigo_tipo = 3 WHERE codigo = 6;

SELECT * FROM produtos;

UPDATE produtos SET descricao = 'Impressora Laser', preco = '700' WHERE codigo = 4;

SELECT * FROM produtos;

--Deletando Dados de Uma Tabela--

DELETE FROM produtos WHERE codigo = 4;

--Inserindo Dados na Tabela--

SELECT * FROM produtos;

INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Ipad', '2200','3');

--Verificando se os Dados Foram Inseridos na Tabela--

SELECT * FROM produtos;