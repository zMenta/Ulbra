CREATE TABLE Cliente (
    CPF INTEGER PRIMARY KEY,
    nome VARCHAR,
    endereco VARCHAR,
    telefone INTEGER
);

CREATE TABLE Carro (
    placa_carro VARCHAR PRIMARY KEY,
    modelo VARCHAR,
    marca VARCHAR,
    cod_marca INTEGER,
    ano INTEGER,
    data_aluguel DATE,
    data_devolucao DATE,
    valor FLOAT,
    fk_Cliente_CPF INTEGER,
    registro_aluguel INTEGER
    ADD CONSTRAINT Carro_Cliente
        FOREIGN KEY (fk_Cliente_CPF)
        REFERENCES Cliente (CPF)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);


SELECT * FROM Carro WHERE data_aluguel LIKE "2021-09-%";

SELECT * FROM Cliente WHERE nome LIKE "%silva%";

UPDATE Carro SET valor = valor*1.2;

