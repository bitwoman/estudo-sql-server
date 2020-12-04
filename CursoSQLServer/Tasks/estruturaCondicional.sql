/*Condicional IF / ELSE no SQL Server - Estrutura de decisão.
Apenas uma linha de código é utilizado IF/ELSE, se houverem blocos 
de código, então é utilizando 'BEGIN' e 'END'.*/

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

		SELECT 'O aluno ' + @nome + ' está ' + @resultado + 
		' com média ' + CAST(@media AS VARCHAR);


/*DECLARE @numero INT, 
		@texto VARCHAR(10)

SET @numero = 20
SET @texto = 'Bren10'

--Uma linha de código:
IF @numero = 20
	SELECT 'Número correto!'

--Mais linhas de código:
IF @texto = 'Brenda'	
	BEGIN 
		SET @numero = 30
		SELECT @numero
	END;
ELSE
	BEGIN
		SET @numero = 40
		SELECT 'Número incorreto!'
	END;
*/