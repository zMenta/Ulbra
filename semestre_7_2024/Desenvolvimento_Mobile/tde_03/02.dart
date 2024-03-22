void main() {
    List<int> my_list = [1, 2, 3, 4, 5];

    print(doubleList(my_list));
}

List<int> doubleList(List<int> list) {
    List<int> new_list = list;
    for (int i = 0; i < list.length; i++) {
        new_list[i] = new_list[i] * 2;
    }

    return new_list;
}
