--Collation - Agrupamento de Caracteres ou Cola��o:
--Fun��o embutida que retorna as informa��es sobre as cola��es dispon�veis no sistema:
--5508
SELECT * FROM fn_helpcollations()

--Ver esquema atual de cola��o:
--Latin1_General_CI_AS - Case Sensitive e com acentos.
SELECT SERVERPROPERTY('Collation') AS 'Cola��o'

--Alterar esquema de agrupamento:
ALTER DATABASE Biblioteca2
COLLATE Greek_CI_AI

--Verificar esquema de agrupamento:
SELECT DATABASEPROPERTYEX('Biblioteca', 'Collation')

--� poss�vel utilizar qualquer esquema de agrupamento que deseja na hora de realizar uma consulta:
USE db_biblioteca

SELECT * FROM  t_livro
ORDER BY nome_livro
COLLATE Icelandic_CI_AI