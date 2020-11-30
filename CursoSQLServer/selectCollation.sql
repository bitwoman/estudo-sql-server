--Collation - Agrupamento de Caracteres ou Colação:
--Função embutida que retorna as informações sobre as colações disponíveis no sistema:
--5508
SELECT * FROM fn_helpcollations()

--Ver esquema atual de colação:
--Latin1_General_CI_AS - Case Sensitive e com acentos.
SELECT SERVERPROPERTY('Collation') AS 'Colação'

--Alterar esquema de agrupamento:
ALTER DATABASE Biblioteca2
COLLATE Greek_CI_AI

--Verificar esquema de agrupamento:
SELECT DATABASEPROPERTYEX('Biblioteca', 'Collation')

--É possível utilizar qualquer esquema de agrupamento que deseja na hora de realizar uma consulta:
USE db_biblioteca

SELECT * FROM  t_livro
ORDER BY nome_livro
COLLATE Icelandic_CI_AI