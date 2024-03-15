void main() {
    List<String> colorList = [
        "blue",
        "red",
        "green",
        "yellow",
    ];

    for (int i = 0; i < colorList.length; i++) {
        switch(colorList[i]) {
            case "blue":
                print("azul");
                break;
            case "red":
                print("vermelho");
                break;
            case "green":
                print("verde");
                break;
            case "yellow":
                print("amarelo");
                break;
        }
    }
}
