# Example groups

# Group A -> 0
x1_1 = 0
x1_2 = 0
y1 = 0

x2_1 = 0
x2_2 = 1
y2 = 0

# Group B -> 1
x3_1 = 1
x3_2 = 0
y3 = 1

x4_1 = 1
x4_2 = 1
y4 = 1

# Initial Weights
w1 = -1
w2 = -1

# Testing
input_array = [1, 0, 1]
weight_array = [-1, 0, -1]
y_array = 1


def neural_sum(_input_array):
    # return (_x1 * w1) + (_x2 * w2)
    _sum = 0
    for i in range(len(_input_array)):
        _sum += (_input_array[i] * weight_array[i])

    return _sum


def transference(_sum):
    if _sum <= 0:
        return 0
    else:
        return 1


def adjust_weights(_input_array, _yo, _yd):
    # yo = y_obtained
    # yd = y_desired
    # global w1
    # global w2
    # w1 = w1 + 1 * (_yd - _yo) * _x1
    # w2 = w2 + 1 * (_yd - _yo) * _x2
    global weight_array
    for i, _input in enumerate(_input_array):
        # _input = _input_array[i]
        weight_array[i] = weight_array[i] + 1 * (_yd - _yo) * _input


while True:
    adjusts = 0

    # y = transference(neural_sum(input_array))
    # if y != y1:
    #     pass

    y = transference(neural_sum(input_array))
    if y != y_array:
        adjust_weights(input_array, y, y_array)
        adjusts += 1

    # y = transference(neural_sum(x1_1, x1_2))
    # if y != y1:
    #     adjust_weights(x1_1, x1_2, y, y1)
    #     adjusts += 1

    # y = transference(neural_sum(x2_1, x2_2))
    # if y != y2:
    #     adjust_weights(x2_1, x2_2, y, y2)
    #     adjusts += 1

    # y = transference(neural_sum(x3_1, x3_2))
    # if y != y3:
    #     adjust_weights(x3_1, x3_2, y, y3)
    #     adjusts += 1

    # y = transference(neural_sum(x4_1, x4_2))
    # if y != y4:
    #     adjust_weights(x4_1, x4_2, y, y4)
    #     adjusts += 1

    if adjusts == 0:
        break

print(weight_array)
# print("The final weights are w1:{} and w2:{}".format(w1, w2))
