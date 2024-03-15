void main() {
    List<int> numList = [
        2,
        3,
        8,
        10,
        7,
    ];

    if (numList.length == 0) {
        print("List is empty, calculation of average stopped");
        return;
    }

    int total = 0;
    for (int i = 0; i < numList.length; i++) {
        total += numList[i];
    }
    print('Average: ${total / numList.length}');
}
