"""
9.  Solicitar a leitura de um número indefinido de valores inteiros,
 a leitura chega ao final quando a soma dos números lidos for igual a 20.
 Mostrar ao final qual o maior valor lido
"""

num_sum = 0

print()
print("It will stop asking for number if the sum of all then numbers are 20. Good luck!")

while num_sum != 20:
    num = 0

    while True:

        try: # Check if the user typed an integer.
            num = int(input("Please type an number (integer): "))
            num_sum += num
            break
        except:
            print("This is not an integer. Please try again!")

    if num_sum > 20:
        print("Oops. You passed the sum! You can keep typing if you want.")

print("END")
