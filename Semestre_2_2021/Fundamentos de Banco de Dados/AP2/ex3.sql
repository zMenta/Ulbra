CREATE TABLE servicos (
    cod_servico INTEGER PRIMARY KEY,
    descricao VARCHAR,
    mes_referencia DATE,
    valor_pago DOUBLE
);

CREATE TABLE socio (
    id INTEGER PRIMARY KEY,
    numeros INTEGER,
    endereco VARCHAR,
    nome VARCHAR,
    cod_tipo_socio INTEGER,
    descricao_tipo_socio VARCHAR
    fk_usa_servico INTEGER,
    CONSTRAINT socio_usa_servico
        FOREIGN KEY (fk_usa_servico)
        REFERENCES servicos (cod_servico)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

SELECT valor_pago FROM servicos WHERE valor_pago > 500;

SELECT mes_referencia FROM servicos WHERE mes_referencia LIKE "2020-01-%";

SELECT endereco FROM socio WHERE endereco = "%Barão do Rio Branco%";
