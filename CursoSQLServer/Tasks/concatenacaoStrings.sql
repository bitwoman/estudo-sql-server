USE db_biblioteca

--Concatena��o de string's.
--� poss�vel concatenar string's usando o opera��o de concatena��o '+'.
--Sintaxe: string1 + string2 ou coluna + string2|coluna.

SELECT 
	a.nome_autor + ' ' + a.sobrenome AS 'Nome Completo'
FROM t_autores AS a