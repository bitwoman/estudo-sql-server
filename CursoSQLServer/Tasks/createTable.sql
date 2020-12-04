USE db_biblioteca

CREATE TABLE t_livro(
	id_livro SMALLINT PRIMARY KEY IDENTITY(100,1),
	nome_livro VARCHAR(50) NOT NULL,
	ISBN VARCHAR(30) NOT NULL UNIQUE,
	id_autor SMALLINT NOT NULL,
	data_pub DATETIME NOT NULL,
	preco_livro MONEY NOT NULL)

CREATE TABLE t_autores(
	id_autor SMALLINT PRIMARY KEY,
	nome_autor VARCHAR(50),
	sobrenome VARCHAR(60))

CREATE TABLE tb_editoras(
	id_editora SMALLINT PRIMARY KEY IDENTITY,
	nome_editora VARCHAR(50) NOT NULL)