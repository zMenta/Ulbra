"""
5 - Faça um programa que lê três números e mostre na tela uma mensagem indicando qual é o maior.
"""

for i in range(1,4):
    num = int(input(f"Please type the {i}th number: "))
    if i == 1:
        high = num
        low = num
    else:
        if num > high:
            high = num
        
        if num < low:
            low = num

print(f"The highest number typed is {high}.")
print(f"The lowest number typed is {low}.")
