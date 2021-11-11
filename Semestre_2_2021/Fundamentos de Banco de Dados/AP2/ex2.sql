CREATE TABLE artigos (
    cod_artigo INTEGER PRIMARY KEY,
    titulo VARCHAR,
    pag_inicial INTEGER,
    pag_final INTEGER,
    cod_periodico VARCHAR,
    titulo_periodico VARCHAR,
    editora VARCHAR
);

CREATE TABLE pesquisador (
    cod_pesquisador INTEGER PRIMARY KEY,
    nome VARCHAR,
    fk_artigo INTEGER
    ADD CONSTRAINT pesquisador_artigo
        FOREIGN KEY (fk_artigo)
        REFERENCES artigos (cod_artigo)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

SELECT cod_artigo FROM artigos WHERE cod_artigo = 1234;

SELECT editora FROM artigos WHERE editora = "Saraiva";

SELECT nome FROM pesquisador WHERE nome LIKE "João%";
