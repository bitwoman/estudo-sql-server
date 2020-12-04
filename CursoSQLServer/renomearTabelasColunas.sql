--Como renomear colunas e tabelas de um banco de dados no SQL Server:
--sp_rename (tabelas e colunas).

USE db_biblioteca

SELECT * FROM sys.tables
SELECT * FROM t_livro

--Renomear a coluna nome_livro:
sp_rename 't_livro.Título', 'Titulo', 'COLUMN';

sp_rename 't_livro.Titulo', 'nome_livro', 'COLUMN';

--Renomear tabela:
sp_rename 'Livros', 't_livro';

