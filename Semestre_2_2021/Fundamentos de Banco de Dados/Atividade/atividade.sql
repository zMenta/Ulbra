--1
SELECT SUM(notas_itens.quantidade)
FROM notas_itens, notas
WHERE notas.data_emissao BETWEEN '2002-03-01' AND '2002-03-03'
GROUP BY notas_itens

--2
SELECT clientes.nome, notas_itens.quantidade
FROM clientes
INNER JOIN notas
ON clientes.id = notas.id_cliente
INNER JOIN notas_itens
ON notas.id = notas_itens.id_nota
WHERE clientes.nome LIKE 'Maria%';