/*VIEWS: é uma tabela virtual baseada num conjunto de resultados (result sets) de uma consulta SQL. 
Mostra sempre os dados atualizados, pois o bando recria-os toda vez que a view é consultada.*/

USE db_biblioteca

--Criando a view:
CREATE VIEW viewAutores AS 
	SELECT 
		l.nome_livro AS 'Titulo',
		(a.nome_autor + ' ' + a.sobrenome) AS 'Autor'
	FROM t_livro AS l
	INNER JOIN t_autores AS a ON (a.id_autor = l.id_autor)

--Alterando a view:
ALTER VIEW viewAutores AS 
	SELECT 
		l.nome_livro AS 'Titulo',
		(a.nome_autor + ' ' + a.sobrenome) AS 'Autor',
		l.preco_livro AS 'Preco'
	FROM t_livro AS l
	INNER JOIN t_autores AS a ON (a.id_autor = l.id_autor)

--Utilizando a view:
SELECT * FROM viewAutores ORDER BY Preco ASC 

--Exibe a estrutura da própria view:
exec sp_helptext viewAutores

--Excluir a view:
DROP VIEW viewAutores