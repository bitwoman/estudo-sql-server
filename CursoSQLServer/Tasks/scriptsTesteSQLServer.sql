USE Teste

--Criando tabela:
CREATE TABLE Produtos(
	codProduto SMALLINT, 
	nomeProduto VARCHAR(20), 
	precoProduto MONEY, 
	quantidadeProduto SMALLINT, 
	totalCompra AS (precoProduto * quantidadeProduto)
) 

--Campos calculados:
INSERT INTO Produtos VALUES (1, 'Mouse', 15.00, 2)
INSERT INTO Produtos VALUES (2, 'Teclado', 18.00, 1)
INSERT INTO Produtos VALUES (3, 'Fones', 25.00, 1)
INSERT INTO Produtos VALUES (4, 'Pendrive', 25.00, 3)
INSERT INTO Produtos VALUES (5, 'SD card', 29.00, 2)
INSERT INTO Produtos VALUES (6, 'DVD-R', 1.30, 12)

--Consultando:
SELECT * FROM Produtos