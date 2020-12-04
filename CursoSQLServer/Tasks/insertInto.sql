--Alimentando Banco de Dados:

-- Tabela t_autores:
INSERT INTO t_autores (id_autor, nome_autor, sobrenome) VALUES (1, 'Daniel', 'Barret')
INSERT INTO t_autores (id_autor, nome_autor, sobrenome) VALUES (2, 'Gerard','Carter')
INSERT INTO t_autores (id_autor, nome_autor, sobrenome) VALUES (3, 'Mark','Sobell')
INSERT INTO t_autores (id_autor, nome_autor, sobrenome) VALUES (4,'Willian','Stanek')
INSERT INTO t_autores (id_autor, nome_autor, sobrenome) VALUES (5,'Richard','Blum')

-- Tabela tb_editoras:
INSERT INTO tb_editoras (nome_editora) VALUES ('Prentice Hall')
INSERT INTO tb_editoras (nome_editora) VALUES ('O´Reilly')
INSERT INTO tb_editoras (nome_editora) VALUES ('Microsoft Press')
INSERT INTO tb_editoras (nome_editora) VALUES ('Wiley')

-- Tabela t_livro:
INSERT INTO t_livro (nome_livro, ISBN, data_pub, preco_livro, id_autor, id_editora) VALUES ('Linux Command Line and Shell Scriptinng',
123456789, '20091221', 68.35, 5,4)

INSERT INTO t_livro (nome_livro, ISBN, data_pub, preco_livro, id_autor, id_editora) VALUES ('SSH, The Secure Shell',
1011121314, '20091221', 58.30, 1,2)

INSERT INTO t_livro (nome_livro, ISBN, data_pub, preco_livro, id_autor, id_editora) VALUES ('Using Samba', 1516171819,
'20091221', 61.45, 2,2)