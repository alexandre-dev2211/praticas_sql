--Inserindo Dados de Teste (DML)--

--Tabela: tipos_produtos--

insert into tipos_prdutos (tipo) values ('Remédios');
insert into tipos_prdutos (tipo) values ('Cosméticos');
insert into tipos_prdutos (tipo) values ('Diversos');

--Tabela: fabricantes--

insert into fabricantes (fabricante) values ('Roche');
insert into fabricantes (fabricante) values ('Vitalis');
insert into fabricantes (fabricante) values ('Palmolive');

--Tabela: medicos--

insert into medicos (nome, crm) values ('Alfredo Muniz', '121899SP');
insert into medicos (nome, crm) values ('Fernanda Silva', '144875MG');
insert into medicos (nome, crm) values ('Julieta Santana', '136887SC');

--Tabela: clientes--

insert into clientes (nome, endereco, telefone, cep, localidade, cpf) values ('Felicity Jones', 'Rua da Paz, 34', '(11) 2344-9968', '11701-110', 'São Paulo', '321-887-544-20');
insert into clientes (nome, endereco, telefone, cep, localidade, cpf) values ('Angelina Santos', 'Avenida Ipiranga, 1255', '(11) 4566-8777', '07790-000', 'São Paulo', '449-988-635-11');
insert into clientes (nome, endereco, telefone, cep, localidade, cpf) values ('Felipe dos Santos', 'Avenida São João, 336', '(11) 99877-6332', '12890-010', 'Santos', '514-818-661-30');

--Tabela: produtos--

insert into produtos (produto, designacao, composicao, preco_venda, id_tipos_produtos, id_fabricantes) values ('Dipirona', 'Dor e Febre', 'Dipirona Sódica', '3.99', '1', '1');
insert into produtos (produto, designacao, composicao, preco_venda, id_tipos_produtos, id_fabricantes) values ('Sabonete Líquido', 'Perfumaria', 'Sabão', '4.99', '2', '2');
insert into produtos (produto, designacao, composicao, preco_venda, id_tipos_produtos, id_fabricantes) values ('Protetor Solar', 'Proteção Solar', 'Emulsão', '15.00', '2', '1');

--Tabela: compras--

insert into compras (id_clientes, data_compra) values ('1', '2019-05-18');
insert into compras (id_clientes, data_compra) values ('2', '2019-04-15');
insert into compras (id_clientes, data_compra) values ('1', '2019-06-10');

--Tabela: produtos_compra--

insert into produtos_compra (id_compras, id_produtos, quantidade) values ('1', '1', '2');
insert into produtos_compra (id_compras, id_produtos, quantidade) values ('1', '2', '3');
insert into produtos_compra (id_compras, id_produtos, quantidade) values ('2', '3', '1');

--Tabela: receitas_medica--

insert into receitas_medica (id_produtos_compra, id_medicos, receita) values ('1', '1', 'receita1.pdf');
insert into receitas_medica (id_produtos_compra, id_medicos, receita) values ('3', '2', 'receita2.pdf');

--Efetuando Consultas Simples--

select * from tipos_prdutos;

select id_tipos_prdutos, tipo from tipos_prdutos;

select tipo, id_tipos_prdutos from tipos_prdutos;

select id_tipos_prdutos, tipo from tipos_prdutos order by id_tipos_prdutos desc; 

select * from fabricantes;

select * from medicos;

select * from clientes;

select * from compras;

select * from produtos_compra;

select * from receitas_medica;

select * from produtos_compra where quantidade > 2;

--Efetuando Consultas Complexas--

select * from compras;

select com.id_compras as 'ID Compras', cli.nome as 'Cliente', com.data_compra as 'Data Compra' from compras as com, clientes as cli where com.id_clientes = cli.id_clientes;

select * from produtos_compra;

select proc.id_produtos_compra as 'Produto Compra', com.id_compras as 'Compra', prod.produto as 'Produto', prod.preco_venda as 'Preço', proc.quantidade as 'Quantidade',
sum(prod.preco_venda * proc.quantidade) as 'Total Produto Compra', com.data_compra as 'Data da Compra'
from produtos_compra as proc, produtos as prod, compras as com where com.id_compras = proc.id_compras and prod.id_produtos = proc.id_produtos
group by com.id_compras;

--Atualização de Dados--

select * from  tipos_prdutos;

update tipos_prdutos set tipo = 'Outros Produtos' where id_tipos_prdutos = 4;

select * from tipos_prdutos;

--Exclusão de Dados--

delete from receitas_medica where id_receita_medica = 2;

select * from receitas_medica;

delete from produtos_compra where id_produtos_compra = 3;

select * from produtos_compra;














