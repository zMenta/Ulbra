class Neuron:
    def __init__(self, weight_list: list, output: float = 0) -> None:
        self.output = 0
        if not weight_list.count == 0:
            self.weight_list = weight_list
        else:
            self.weight_list = [1]

    def add_input(self, input_list: list) -> float:
        """ Add inputs to be processed to the neuron. Inputs follow the same order as the weights. Ex: Weight[2] * Input[2]
            Returns a sum value of weights.
            *input_list must have the same count as weight_list.

        Args:
            input_list (list[floats]): List of inputs containing floats.
        """
        if self.weight_list.count != input_list.count:
            return

        input_sum: float = 0
        for i in range(input_list.count):
            input_sum += self.weight_list[i] * input_list[i]

        return input_sum
