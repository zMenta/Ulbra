void main() {
    List<int> my_list = [1, 2, 3, 4, 5];

    print(returnAverage(my_list));
}

double returnAverage(List<int> list) {
    double total = 0;
    for (int i = 0; i < list.length; i++) {
        total += list[i];
    }

    return total / list.length;
}
