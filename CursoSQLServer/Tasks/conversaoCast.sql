--Convers�o de Tipos de Dados no SQL Server com Cast e Convert
USE db_biblioteca
GO

SELECT 'O pre�o do livro ' + nome_livro + ' � de R$ ' + CAST(preco_livro AS VARCHAR(6)) AS item
FROM t_livro 
WHERE id_autor = 2