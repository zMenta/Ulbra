-- Explique o conceito Integridade Referencial. De um exemplo SQL DDL para ilustrar melhor a sua explicação, 
-- usando a modelagem relacional (“Academico”).


-- Intregridade Refencial é ser íntegro em seu banco de dados. Onde as foreign keys estejam de acordo de quem está sendo referente.
-- Por Exemplo: 

-- Na tabela Aluno, temos o idcid que referencia a tabela Cidade, onde com esse relacionamento podemos saber em qual cidade o Aluno mora.
-- Por exemplo tendo uma cidade com idcid igual a 5. Se um aluno tem o idcid igual a 5, sabemos que esse aluno mora na cidade 5. 
-- Assim o banco de dados é íntegro com seus dados.