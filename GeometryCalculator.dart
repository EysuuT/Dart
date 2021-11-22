import 'dart:math';

const double pi = 3.1415926535897932;

void main() {
  GeometryCalculator test = GeometryCalculator();
  test
    ..stringsplit("circle, 6")
    ..stringsplit("Rectangle, 5, 7")
    ..stringsplit("tRiangle, 3, 4, 5")
    ..stringsplit("SquaRe, 2");
}

class GeometryCalculator extends AreaCalculator {
  void stringsplit(String string) {
    List<String> list = [];
    List<double> numlist = [];
    var ss = string.split(", ");
    ss.forEach((e) => list.add(e));

    for (int i = 1; i < list.length; i++) {
      numlist.add(double.parse(list[i]));
    }

    calculator(list[0], numlist);
  }

  void calculator(String geometrycform, List<double> num) {
    switch (geometrycform.toLowerCase()) {
      case "square":
        Square(geometrycform, num[0]);
        break;
      case "rectangle":
        RectanglE(geometrycform, num[0], num[1]);
        break;
      case "triangle":
        Triangle(geometrycform, num[0], num[1], num[2]);
        break;
      case "circle":
        Circle(geometrycform, num[0]);
        break;
      default:
        print("Geometryc form not defined!!!!!!");
    }
  }
}

abstract class AreaCalculator {
  void RectanglE(String geometrycform, double num1, double num2) =>
      print("$geometrycform area = ${num1 * num2}");
  void Square(String geometrycform, double num1) =>
      print("$geometrycform area = ${num1 * num1}");
  //formula de heron
  void Triangle(String geometrycform, double num1, double num2, double num3) =>
      print(
          "$geometrycform area = ${sqrt(((num1 + num2 + num3) / 2) * (((num1 + num2 + num3) / 2) - num1) * (((num1 + num2 + num3) / 2) - num2) * (((num1 + num2 + num3) / 2) - num3))}");
  void Circle(String geometrycform, double num1) =>
      print("$geometrycform area = ${(num1 * num1) * pi}");
}
