--RULES: determinam o comportamento de parâmetros:
--Exemplo: um livro com o preço inferior à 10.00 não opoderá ser inserido.
--É necessário vincular a regra.

--CREATE RULE regraPreco AS @VALOR > 10.00

-- Executa uma stored procedure (procedimento armazenado): bindrule (sp interna)
EXECUTE sp_bindrule regraPreco, 't_livro.preco_livro' 


