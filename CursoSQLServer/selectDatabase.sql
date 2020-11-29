USE db_biblioteca


/*--Traz tudo, mesmo sem correspondência:
SELECT 
		l.nome_livro,
		l.data_pub,
		a.nome_autor
FROM t_livro AS l
FULL JOIN t_autores AS a ON (a.id_autor = l.id_autor)



SELECT 
	l.nome_livro AS Titulo,
	l.ISBN AS ISBN,
	a.nome_autor AS Autor
FROM t_livro AS l
INNER JOIN t_autores AS a ON (a.id_autor = l.id_autor)

--Livros que começam com S ou L, sem importar o restante dos caracteres.
SELECT 
	nome_livro
FROM t_livro
WHERE nome_livro LIKE '[SL]%'

--Primeira letra não importa, e a segunda letra vai ser i ou S:
SELECT 
	nome_livro
FROM t_livro
WHERE nome_livro LIKE '_[iS]%'

SELECT * 
INTO t_livro_backup
FROM t_livro

SELECT 
	id_livro
	nome_livro,
	ISBN
INTO livro_isbn
FROM t_livro
WHERE id_livro > 2

Porcentagem do total da tabela:
SELECT TOP 10 PERCENT nome_livro 
FROM t_livro

SELECT TOP 3 nome_livro 
FROM t_livro

SELECT id_autor 
FROM t_autores 

UNION
--UNION possui um DISTINCT interno, enquanto que UNION ALL não, portanto, é mais performático
--justamente por não precisar verificação.
SELECT id_autor 
FROM t_livro


SELECT * 
FROM t_livro
WHERE id_livro > 101 OR id_autor < 3

SELECT 
	nome_livro AS Titulo,
	preco_livro AS Preco
FROM t_livro
ORDER BY preco_livro ASC

SELECT 
	 l.nome_livro AS Titulo,
	 l.preco_livro AS Preco
FROM t_livro AS l 
WHERE l.id_autor = 1*/