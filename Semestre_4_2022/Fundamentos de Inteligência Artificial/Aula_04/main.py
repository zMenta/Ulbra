# Class 04 | TDE

from enum import Enum
import sum_functions
from neuron import Neuron


def main():
    # PART 1
    # sum_value_part_1 = sum_functions.data_sum(value_weight)
    # print(function(sum_value_part_1, F.FastLimit))
    # print(function(sum_value_part_1, F.Ramp))
    # print(function(sum_value_part_1, F.Sigmoid))

    # Part 2
    n1 = Neuron([1])
    n2 = Neuron([0, -1, 2])

    n2_output = n2.add_input([-1, 1, 1], 0)

    print(n2_output)
    print(n1.add_input([n2_output], 2))

    # print(n1.weight_list)
    # print(n1.print_stuff(2))
    # print(n1.add_input([2, 4]))


class F(Enum):
    """
        F = Functions. Options to be
        used with the def function()
    """
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
