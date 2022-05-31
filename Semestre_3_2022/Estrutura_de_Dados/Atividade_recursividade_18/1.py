
array = [2, 8, 10, 5, 25]

# Should return 50 from the example array.
def sum_array(array, i=len(array)):
    if i <= 0:
        return 0
    return sum_array(array, i-1) + array[i-1]

print(sum_array(array))
