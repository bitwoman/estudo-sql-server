/*Funções Definidas pelo Usuário - Valor de Tabela Embutida (inline)
São similares a uma exibição, porém permitem utilizar parâmetros. 
Retornam um conjunto completo de dados.

Sintaxe básica:
CREATE FUNCTION nome_funcao(parâmetros)
RETURNS Table AS 
	RETURN (select blablabla)

Function para exibir arquivos utilizando o parâmetro, tem melhor desempenho 
que uma view. Stored Procedure para rotinas de repetição, pois o código 
está gravado no banco de dados quando for usar toda vez. Aceita também parâmetros. 
Ela é menos limitada, tem melhor desempenho. obs procedure: ela salva no servidor,  só executar no sql.
*/
USE db_biblioteca

CREATE FUNCTION retorn_itens(@valor REAL) RETURNS Table AS
RETURN(
	SELECT 
		l.nome_livro AS Livro,
		(a.nome_autor + a.sobrenome) AS Autor,
		e.nome_editora AS Editora,
		l.preco_livro AS Preco
	FROM t_livro AS l
	JOIN t_autores AS a ON (a.id_autor = l.id_autor)
	JOIN tb_editoras AS e ON (e.id_editora = l.id_editora)
	WHERE l.preco_livro > @valor)

--USO:
SELECT Livro, Autor, Preco
FROM retorn_itens(62.00)