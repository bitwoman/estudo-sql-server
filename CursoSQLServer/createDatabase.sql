/*Criando Banco de Dados*/
CREATE DATABASE db_biblioteca
ON PRIMARY (
			NAME = db_biblioteca, 
			FILENAME='C:\CursoSQLServer\db_biblioteca.MDF',
			SIZE=6MB, 
			MAXSIZE=15MB, 
			FILEGROWTH=10%)