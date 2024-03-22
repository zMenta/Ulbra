enum Operation {
    add,
    multiply,
    subtract,
    divide
}

void main() {
    print(calculator(10, 5, Operation.add));
    print(calculator(10, 5, Operation.multiply));
    print(calculator(10, 5, Operation.subtract));
}

double calculator(double x, double y, Operation oper) {
    switch(oper) {
        case Operation.add:
            return x + y;
        case Operation.multiply:
            return x * y;
        case Operation.subtract:
            return x - y;
        case Operation.divide:
            return x / y;
    }
}
