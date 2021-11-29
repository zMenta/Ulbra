--Create tables:

CREATE TABLE Autores(
  	id serial NOT NULL PRIMARY KEY,
	nome varchar(40)
);

CREATE TABLE Editoras(
	id serial NOT NULL PRIMARY KEY,
  	nome VARCHAR(40)
);

CREATE TABLE Livros(
	id serial NOT NULL PRIMARY KEY,
  	nome VARCHAR(40),
	preco decimal,
  	id_autor INT,
  	id_editora INT,
  	CONSTRAINT FK_Autor FOREIGN KEY (id_autor) REFERENCES autores(id),
  	CONSTRAINT FK_Editora FOREIGN KEY (id_editora) REFERENCES editoras(id)
);



--Insert Values:

INSERT INTO autores( nome )
VALUES 
('Clarabela'),
('Pablo'),
('Ricardo'),
('Carolina'),
('Ana');

INSERT Into editoras(nome)
VALUES
('Rio Branco'),
('Tinta'),
('Castelo Velho');

INSERT INTO livros (nome, preco, id_autor, id_editora)
VALUES
('Meu Skate Liso', 49.50, 1, 2),
('Saltins Bancos', 80, 2, 3),
('Eu sinto frio', 100, 5, 1),
('Skate Rugoso',35,  1, 3),
('Moeda Suja', 47.20, 2, 1);
