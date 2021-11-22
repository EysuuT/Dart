import 'dart:math';

const double pi = 3.1415926535897932;

void main() {
  GeometryCalculator test = GeometryCalculator();
  test
    ..calculator("circle", 6)
    ..calculator("Rectangle", 5, 7)
    ..calculator("tRiangle", 3, 4, 5)
    ..calculator("SquaRe", 2);
}

class GeometryCalculator extends AreaCalculator {
  void calculator(String geometrycform,
      [double num1 = -1, double num2 = -1, double num3 = -1]) {
    switch (geometrycform) {
      case "SquaRe":
        Square(geometrycform, num1);
        break;
      case "Rectangle":
        RectanglE(geometrycform, num1, num2);
        break;
      case "tRiangle":
        Triangle(geometrycform, num1, num2, num3);
        break;
      case "circle":
        Circle(geometrycform, num1);
        break;
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
      print("$geometrycform area = ${num1 * pi}");
}
