void main() {
  //Estructuras de control Condicional
  int calificacion = 5;

  if (calificacion >= 11) {
    print("Aprobado");
  } else if (calificacion >= 7) {
    print("Desaprobado");
  } else {
    print("Reprobado");
  }

  // niveles de logro
  // AD -> 18 A 20
  // A -> 16 A 17
  // B -> 14 A 16
  // C -> 12 A 13
  // D -> 10 A 11
  // E -> MENORES 10

  var x = 3 > 5 ? 6 : 7;
  print(x);
}
