import 'dart:math';

void main() {
  double gradosSexagesimales = 180;
  double gradosCentesimales = sexagesimalACentesimal(gradosSexagesimales);
  double radianes = sexagesimalARadianes(gradosSexagesimales);
  print(
      "$gradosSexagesimales grados sexagesimales son $gradosCentesimales grados centesimales");
  print("$gradosSexagesimales grados sexagesimales son $radianes radianes");
}

double sexagesimalACentesimal(double gradosSexagesimales) {
  return gradosSexagesimales * (10 / 9);
}

double sexagesimalARadianes(double gradosSexagesimales) {
  return gradosSexagesimales * (pi / 180);
}
