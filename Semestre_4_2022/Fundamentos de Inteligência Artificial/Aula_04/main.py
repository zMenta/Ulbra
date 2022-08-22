# Class 03 | TDE - 01

from enum import Enum
import sum_functions


def main():
    sum_value = sum_functions.data_sum(value_weight)
    print(function(sum_value, F.FastLimit))
    print(function(sum_value, F.Ramp))
    print(function(sum_value, F.Sigmoid))


class F(Enum):
    FastLimit = 0
    Ramp = 1
    Sigmoid = 2


value_weight = [
    [-1, 0],
    [1, -1],
    [1, 2],
]


def function(sum_value: float, function_type: int = F.FastLimit) -> float:
    if function_type == F.FastLimit:
        return sum_functions.fastLimit(sum_value)
    elif function_type == F.Ramp:
        return sum_functions.rampFunction(sum_value)
    elif function_type == F.Sigmoid:
        return sum_functions.sigmoidFunction(sum_value)


if __name__ == "__main__":
    main()
