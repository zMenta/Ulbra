UPDATE Produtos
SET valor_unitario = 25, descricao = "Goma de mascar vip"
WHERE codigo = 1;

DELETE Produtos WHERE descricao = "batata";

SELECT * FROM Categoria;

SELECT descricao, valor_unitario FROM Produtos;

ALTER TABLE Produtos
ADD valor_unitario_10plus INTEGER;

INSERT INTO Produtos(valor_unitario_10plus)
VALUES (SELECT valor_unitario FROM Produtos)*1.1;


SELECT * FROM Produtos
WHERE data_cadastro LIKE "YYYY-10-DD";

SELECT * FROM Produtos
WHERE descricao LIKE "%palavra%";