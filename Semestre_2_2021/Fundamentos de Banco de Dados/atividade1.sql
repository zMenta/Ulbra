CREATE TABLE Equipe (
    id INT PRIMARY KEY,
    nome VARCHAR
);

CREATE TABLE Colaborador (
    num_matricula INT,
    id INT PRIMARY KEY,
    nome VARCHAR,
    email VARCHAR,
    senha VARCHAR,
    fk_equipe INT REFERENCES Equipe(id)
);

CREATE TABLE Projeto (
    horas DATE,
    id INT PRIMARY KEY,
    nome VARCHAR,
    descricao VARCHAR,
    fk_equipe INT REFERENCES Equipe(id)
);

CREATE TABLE Comentarios (
    id INT PRIMARY KEY,
    data_e_hora DATE,
    fk_colaborador_id INT REFERENCES Colaborador(id),
    fk_projeto_id INT REFERENCES Projeto(id)
);

CREATE TABLE Projeto_melhorias_de_processo(
    id INT PRIMARY KEY
    resultados_esperados VARCHAR,
    departamento VARCHAR,
    fk_projeto INT REFERENCES Projeto(id)
)

CREATE TABLE Projeto_social(
    id INT PRIMARY KEY,
    publico_beneficiario VARCHAR,
    fk_projeto INT REFERENCES Projeto(id)
)

