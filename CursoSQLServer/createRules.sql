--RULES: determinam o comportamento de par�metros:
--Exemplo: um livro com o pre�o inferior � 10.00 n�o opoder� ser inserido.
--� necess�rio vincular a regra.

--CREATE RULE regraPreco AS @VALOR > 10.00

-- Executa uma stored procedure (procedimento armazenado): bindrule (sp interna)
EXECUTE sp_bindrule regraPreco, 't_livro.preco_livro' 


