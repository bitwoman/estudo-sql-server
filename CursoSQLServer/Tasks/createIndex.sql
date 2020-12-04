USE db_biblioteca

/*CREATE INDEX: os indíces devem ser criados apenas em tabelas que recebam muitas consultas, pois tabelas indexadas 
levam mais tempo para serem atualizadas.*/

CREATE INDEX indiceNomeLivro ON t_livro(nome_livro)

