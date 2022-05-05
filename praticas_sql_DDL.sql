USE secao_04; --Seleciona o Banco de Dados--

CREATE TABLE pessoas (id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, --Criando Tabelas--
nome VARCHAR(30) NOT NULL
);

INSERT INTO pessoas (nome) VALUES ('Felicity Jones'); --Inserindo ou Populando Tabelas--

ALTER TABLE pessoas ADD mes_nascimento INT NOT NULL; --Realizando Alterações na Estrutura da Tabela--

SELECT * FROM pessoas; -- Consultando Tabelas--

UPDATE pessoas SET mes_nascimento = 6 WHERE id = 1; --Realizando Atualizações em Uma Tabela--

SELECT * FROM pessoas; --Consultando Tabelas--

DROP TABLE pessoas; --Excluindo Tabelas--

SELECT * FROM pessoas; --Checando se a Tabela foi Excluida--