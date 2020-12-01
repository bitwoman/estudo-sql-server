/*CONVERT(novo_tipo, expressao, estilo) -> "estilo" � usado normalmente para 
converter datas ou trabalhar com float/real.*/
USE db_biblioteca
GO

--Teste CONVERT:
SELECT 'O pre�o do livro ' + nome_livro + ' � de R$ ' + CONVERT(VARCHAR(6), preco_livro)
FROM t_livro


/*Trabalhando com datas - quando a express�o � um tipo de data ou hora, 
o estilo deve ser um valor de acordo com a tabela a seguir (simplificada): 
tabela data cast/convert */

--Sem alterar o estilo:
SELECT 'A data de publica��o ' + CONVERT(VARCHAR(15), data_pub)
FROM t_livro
WHERE id_livro = 102

--Alterando estilo para Brit�nico/Franc�s (103):
SELECT 'A data de publica��o ' + CONVERT(VARCHAR(15), data_pub, 103)
FROM t_livro
WHERE id_livro = 102
