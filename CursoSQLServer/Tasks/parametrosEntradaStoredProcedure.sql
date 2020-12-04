--Stored Procedures - Par�metros de Entrada e INSERT no SQL Server:
--Outro exemplo com m�ltiplos par�metros de entrada:

USE db_biblioteca
-- EXEMPLO DE ALTERA��O E PAR�METROS:
ALTER PROCEDURE p_livroValor (@ID SMALLINT, @Preco MONEY) AS
	SELECT 
		id_livro AS id,
		nome_livro AS Livro,
		preco_livro AS Pre�o
	FROM t_livro
	WHERE id_livro > @ID AND preco_livro > @Preco

EXEC p_livroValor @ID = 100, @Preco = 60


/*Outro exemplo: desejo fornecer o ID e a quantidade de um t�tulo adquirido, e
saber o valor total pago pelos livros.*/
ALTER PROCEDURE p_livroValor (@quantidade SMALLINT, @ID SMALLINT) AS 
	SELECT 
		nome_livro AS titulo,
		(preco_livro * @quantidade) AS Pre�oTotal
	FROM t_livro
	WHERE id_livro = @ID


EXEC p_livroValor @ID = 101, @quantidade = 10

-- EXEMPLO: INSER��O DE DADOS, PAR�METROS:
CREATE PROCEDURE p_insere_editora(@nome VARCHAR(50)) AS
	INSERT INTO tb_editoras(nome_editora) VALUES (@nome)

EXEC p_insere_editora @nome= 'Editora1'
-- +1..N dados
EXEC p_insere_editora @nome = 'Apress'

SELECT * FROM tb_editoras