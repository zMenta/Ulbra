--Create tables:

CREATE TABLE Autores(
  	id serial NOT NULL PRIMARY KEY,
	nome varchar(40)
)

CREATE TABLE Editoras(
	id serial NOT NULL PRIMARY KEY,
  	nome VARCHAR(40)
)

CREATE TABLE Livros(
	id serial NOT NULL PRIMARY KEY,
  	nome VARCHAR(40),
  	id_autor INT,
  	id_editora INT,
  	CONSTRAINT FK_Autor FOREIGN KEY (id_autor) REFERENCES autores(id),
  	CONSTRAINT FK_Editora FOREIGN KEY (id_editora) REFERENCES editoras(id)
)



--Insert Values:

INSERT INTO autores( nome )
VALUES 
('Clarabela'),
('Pablo'),
('Ricardo'),
('Carolina'),
('Ana')
