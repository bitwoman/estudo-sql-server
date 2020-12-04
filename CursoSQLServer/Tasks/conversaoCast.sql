--Conversão de Tipos de Dados no SQL Server com Cast e Convert
USE db_biblioteca
GO

SELECT 'O preço do livro ' + nome_livro + ' é de R$ ' + CAST(preco_livro AS VARCHAR(6)) AS item
FROM t_livro 
WHERE id_autor = 2