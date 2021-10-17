-- 2

CREATE TABLE Fornecedor (
    codigo INTEGER,
    nome VARCHAR
);

CREATE TABLE _pede (
    fk_Produtos_codigo INTEGER,
    fk_fornecedor_id INTEGER
    data DATE,
    valor_utilitario INTEGER,
    quantidade INTEGER PRIMARY KEY
);

CREATE TABLE Produtos (
    valor_utilitario INTEGER,
    data_cadastro DATE,
    descricao VARCHAR,
    codigo INTEGER PRIMARY KEY,
    fk_Categoria_codigo INTEGER
);

CREATE TABLE Categoria (
    codigo INTEGER PRIMARY KEY,
    nome VARCHAR
);

ALTER TABLE _pede ADD CONSTRAINT FK__pede_2
    FOREIGN KEY (fk_Produtos_codigo)
    REFERENCES Produtos (codigo);

ALTER TABLE Produtos ADD CONSTRAINT FK_Produtos_2
    FOREIGN KEY (fk_Categoria_codigo)
    REFERENCES Categoria (codigo)

ALTER TABLE _pede ADD CONSTRAINT fk_fornecedor
    FOREIGN KEY (fk_fornecedor_id)
    REFERENCES Fornecedor (codigo)

-- 3

ALTER TABLE Fornecedor(
    ADD data_ultima_compra DATE
);

-- 4

ALTER TABLE _pede (
    DROP date,
    ADD data_pedido DATE
);

-- 5
ALTER TABLE Produtos(
    DROP data_cadastro
);

-- 6
ALTER TABLE Produtos(
    MODIFY FOREIGN KEY (fk_Categoria_codigo)
    REFERENCES Categoria (codigo)
    ON DELETE CASCADE
    ON UPDATE RESTRICT 
);

-- 7

ALTER TABLE Fornecedor(
    MODIFY nome VARCHAR(60)
);

-- 8
-- Não pode ser deletado, pois ele está se relacionando com a table _pede.

-- 9

ALTER TABLE _pede(
    ADD numero_do_pedido VARCHAR(40)
);