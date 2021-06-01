"""
10   Elabore um algoritmo que dada a idade de uma pessoa ele classifica-o em uma das seguintes categorias:
o   Menor de 16 anos - Não eleitor
o   Com 16 e menor de 18 anos – Eleito, com voto facultativo
o   Com 18 e menor de 70 anos – Eleito, com voto obrigatório
o   Com 70 ou mais– Eleitor, com voto facultativo
O programa deve encerrar ao digitar a idade 0. Ao fim deve ser mostrado o total de eleitores, o total de eleitores com votos obrigatório e os não eleitores.
"""

num = 1
elector = 0
not_elector = 0
must_vote = 0

while num != 0:
    num = int(input("Please type an age (type 0 to stop): "))

    if num != 0:
        if num < 16 :
            not_elector += 1
        elif num < 18:
            elector += 1
        elif num < 70:
            must_vote += 1
            elector += 1
        else:
            elector += 1

print(f"The total os electors: {elector}")
print(f"The numbers of electors that must vote: {must_vote}")
print(f"The number os people that are not electors: {not_elector}")
