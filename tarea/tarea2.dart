void main() {
  double sueldo1 = 1000;
  double sueldo2 = 2000;
  double sueldo3 = 3000;

  double aumento1 = sueldo1 * 0.10;
  double aumento2 = sueldo2 * 0.12;
  double aumento3 = sueldo3 * 0.15;

  double sueldoFinal1 = sueldo1 + aumento1;
  double sueldoFinal2 = sueldo2 + aumento2;
  double sueldoFinal3 = sueldo3 + aumento3;

  print("El sueldo final del primer empleado es: \$${sueldoFinal1}");
  print("El sueldo final del segundo empleado es: \$${sueldoFinal2}");
  print("El sueldo final del tercer empleado es: \$${sueldoFinal3}");
}
