/*Condicional IF / ELSE no SQL Server - Estrutura de decis�o.
Apenas uma linha de c�digo � utilizado IF/ELSE, se houverem blocos 
de c�digo, ent�o � utilizando 'BEGIN' e 'END'.*/

--Exemplo:
DECLARE 
		@nome VARCHAR(30),
		@media REAL, 
		@resultado VARCHAR(10)

SELECT 
		@nome = nome_aluno,
		@media = (nota1 + nota2 + nota3)/3.00
FROM alunos
WHERE nome_aluno = 'Brenda'
	IF @media >= 7.00
		BEGIN 
			SELECT @resultado = 'Aprovado';
		END
	ELSE
		BEGIN
			SELECT @resultado = 'Reprovado'
		END;

		SELECT 'O aluno ' + @nome + ' est� ' + @resultado + 
		' com m�dia ' + CAST(@media AS VARCHAR);


/*DECLARE @numero INT, 
		@texto VARCHAR(10)

SET @numero = 20
SET @texto = 'Bren10'

--Uma linha de c�digo:
IF @numero = 20
	SELECT 'N�mero correto!'

--Mais linhas de c�digo:
IF @texto = 'Brenda'	
	BEGIN 
		SET @numero = 30
		SELECT @numero
	END;
ELSE
	BEGIN
		SET @numero = 40
		SELECT 'N�mero incorreto!'
	END;
*/