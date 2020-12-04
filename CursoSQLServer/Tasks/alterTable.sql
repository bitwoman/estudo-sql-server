USE db_biblioteca

/*ALTER TABLE t_livro 
ADD id_autor SMALLINT NOT NULL
CONSTRAINT fk_id_autor FOREIGN KEY (id_autor) 
REFERENCES t_autores;*/

ALTER TABLE t_livro
ADD id_editora SMALLINT NOT NULL
CONSTRAINT fk_id_editora FOREIGN KEY (id_editora) 
REFERENCES tb_editoras;