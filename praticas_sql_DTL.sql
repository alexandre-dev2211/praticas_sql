--Realizando um Bloco de Transações--

SELECT * FROM produtos;

SELECT * FROM tipos_produto;

START TRANSACTION;
INSERT INTO tipos_produto (descricao) VALUES ('Acessórios');
INSERT INTO tipos_produto (descricao) VALUES ('Equipamentos');
COMMIT;

SELECT * FROM tipos_produto;

SELECT * FROM tipos_produto;

START TRANSACTION;
INSERT INTO tipos_produto (descricao) VALUES ('Farmácia');
INSERT INTO tipos_produto (descricao) VALUES ('Escritótio');
ROLLBACK;

--Inserindo, Verificando e Atualizando Dados--

SELECT * FROM tipos_produto;

INSERT INTO tipos_produto (codigo, descricao) VALUES ('77','Mais');

SELECT * FROM tipos_produto;

UPDATE tipos_produto SET codigo = 10 WHERE codigo = 77;

SELECT * FROM tipos_produto;