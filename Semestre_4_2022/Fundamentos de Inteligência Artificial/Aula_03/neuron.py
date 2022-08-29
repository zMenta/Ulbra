import re
import sum_functions as sf


class Neuron:
    def __init__(self, weight_list: list) -> None:
        if not weight_list.count == 0:
            self.weight_list = weight_list
        else:
            self.weight_list = [1]

    def add_input(self, input_list: list, function_type: int = 0) -> float:
        """ Add inputs to be processed to the neuron. Inputs follow the same order as the weights. Ex: Weight[2] * Input[2]
            Returns a sum value of weights.
            *input_list must have the same count as weight_list.

        Args:
            input_list (list[floats]): List of inputs containing floats.

            function_type (float): select the desired function to be used. 0 = fast limit | 1 = ramp | 2 = sigmoid
        """
        if type(input_list) != list:
            print("input is not a list")
            return

        if len(self.weight_list) != len(input_list):
            print("list don't match")
            return

        input_sum: float = 0
        for i in range(len(input_list)):
            input_sum += self.weight_list[i] * input_list[i]

        if function_type == 0:
            return sf.fastLimit(input_sum)
        elif function_type == 1:
            return sf.rampFunction(input_sum)
        elif function_type == 2:
            return sf.sigmoidFunction(input_sum)

        return input_sum
