void main(List<String> args) {
  //Nullsafety
  String? nombre;
  nombre = "ronald";
  print(nombre.toUpperCase());

  int? numero;
  numero = 5;
  int total = numero! + 5;
  print(total);

  String? apellido;
  apellido = "chueleje";
  String apellido1 = apellido ?? "Sin Apellido";
  print(apellido1);
}

int? suma() {
  return 2 + 2;
}
