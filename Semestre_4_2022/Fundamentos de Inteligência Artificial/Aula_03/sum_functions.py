def fastLimit(sum_value: float) -> float:
    if sum_value <= 0:
        return -1
    else:
        return 1


def rampFunction(sum_value: float) -> float:
    if sum_value < 0:
        return 0
    elif sum_value <= 1:
        return sum_value
    else:
        return 1


def sigmoidFunction(sum_value: float) -> float:
    if sum_value < 0:
        return -1 + (1/(1 - sum_value))
    else:
        return 1 - (1/(1 + sum_value))


def data_sum(data_list: list) -> float:
    current_sum: float = 0
    for values in data_list:
        current_sum += values[0] * values[1]

    return current_sum
