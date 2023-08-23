import 'dart:math';

void main() {
  double a = 3;
  double b = 4;
  double c = 5;
  double area = calcularAreaTriangulo(a, b, c);
  print("El área del triángulo es $area");
}

double calcularAreaTriangulo(double a, double b, double c) {
  double s = (a + b + c) / 2;
  return sqrt(s * (s - a) * (s - b) * (s - c));
}
