
array = [2, 8, 30, 5, 25, 18]


def max_value(array, i=len(array)):
    if i <= 1:
        return array[0]

    current = max_value(array, i-1)
    if array[i-1] > current:
        return array[i-1]
    else:
        return current


print(max_value(array))
