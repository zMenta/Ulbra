void main() {
    List<int> my_list = [1, 2, 3, 4, 5];

    print(returnEven(my_list));
}

List<int> returnEven(List<int> list) {
    List<int> new_list = [];
    for (int i = 0; i < list.length; i++) {
        if (list[i] % 2 == 0) {
            new_list.add(list[i]);
        }
    }

    return new_list;
}
