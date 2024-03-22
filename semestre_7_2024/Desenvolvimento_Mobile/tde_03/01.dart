enum Operation {
    add,
    multiply,
    subtract
}

void main() {
    print(calculator(10, 5, Operation.add));
    print(calculator(10, 5, Operation.multiply));
    print(calculator(10, 5, Operation.subtract));
}

int calculator(int x, int y, Operation oper) {
    switch(oper) {
        case Operation.add:
            return x + y;
        case Operation.multiply:
            return x * y;
        case Operation.subtract:
            return x - y;
    }
}
