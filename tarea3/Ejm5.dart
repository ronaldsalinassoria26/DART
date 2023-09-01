class Persona {
  String nombre;
  int edad;
  String dni;

  Persona(this.nombre, this.edad, this.dni);

  String get getNombre => nombre;
  set setNombre(String nuevoNombre) {
    nombre = nuevoNombre;
  }

  int get getEdad => edad;
  set setEdad(int nuevaEdad) {
    edad = nuevaEdad;
  }

  String get getDni => dni;
  set setDni(String nuevoDni) {
    dni = nuevoDni;
  }

  void mostrar() {
    print("Nombre: $nombre, Edad: $edad, DNI: $dni");
  }

  bool esMayorDeEdad() {
    return edad >= 18;
  }
}

void main() {
  var persona = Persona("Juan Pérez", 25, "12345678");

  print("Datos de la persona:");
  persona.mostrar();

  print("¿Es mayor de edad? ${persona.esMayorDeEdad()}");

  persona.setNombre = "María López";
  persona.setEdad = 30;
  persona.setDni = "98765432";

  print("Nuevos datos de la persona:");
  persona.mostrar();
}