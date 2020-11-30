USE db_biblioteca

--Concatenação de string's.
--É possível concatenar string's usando o operação de concatenação '+'.
--Sintaxe: string1 + string2 ou coluna + string2|coluna.

SELECT 
	a.nome_autor + ' ' + a.sobrenome AS 'Nome Completo'
FROM t_autores AS a