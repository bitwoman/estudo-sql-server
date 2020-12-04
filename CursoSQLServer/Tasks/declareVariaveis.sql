/*Variáveis - Declaração e atribuição de valores no SQL Server:
as variáveis podem ser declaradas no corpo de um batch ouu procedimento. Pode-se atribuir-lhes valores usando-se declarações SET ou SELECT. As variáveis são inicializadas por padrão com NULL.*/

USE db_biblioteca

DECLARE 
	@preco MONEY,
	@quantidade INT,
	@nome VARCHAR(30)

SET @quantidade = 5

SELECT 
	@preco = l.preco_livro,
	@nome = l.nome_livro
FROM t_livro AS l
WHERE l.id_livro = 101

SELECT 
	@nome AS 'Nome do Livro',
	(@preco * @quantidade) AS 'Preço dos Livros'




/*
--Pegando valores do próprio Banco de Dados:
DECLARE 
	@livro VARCHAR(30)
	
SELECT @livro = l.nome_livro
FROM t_livro AS l
WHERE l.id_livro = 101

SELECT @livro AS 'Nome do Livro'



--Declarar variáveis:
DECLARE 
		@valor INT,
		@texto VARCHAR(40),
		@data_nasc DATE,
		@nada MONEY

--Setar um valor:
SET @valor = 50
SET @texto = 'Bóson'
SET @data_nasc = GETDATE()

--Exibir variáveis:
SELECT 
	@valor AS Valor,
	@texto AS Texto,
	@data_nasc AS 'Data Nascimento',
	@nada AS Salario*/