class Persona {
  String nombre;
  int edad;
  String dni;
  String sexo;
  double peso;
  double altura;

  Persona({
    this.nombre = "",
    this.edad = 0,
    this.dni = "",
    this.sexo = "H",
    this.peso = 0.0,
    this.altura = 0.0,
  });

  Persona.conNombreEdadSexo(this.nombre, this.edad, this.sexo)
      : dni = "",
        peso = 0.0,
        altura = 0.0;

  Persona.conTodosLosAtributos(
      this.nombre, this.edad, this.dni, this.sexo, this.peso, this.altura);

  double calcularIMC() {
    double alturaEnMetros = altura / 100;
    double imc = peso / (alturaEnMetros * alturaEnMetros);

    if (imc < 20) {
      return -1;
    } else if (imc >= 20 && imc <= 25) {
      return 0;
    } else {
      return 1;
    }
  }

  bool esMayorDeEdad() {
    return edad >= 18;
  }

  void comprobarSexo(String sexo) {
    if (sexo == "H" || sexo == "M") {
      this.sexo = sexo;
    } else {
      this.sexo = "H";
    }
  }
}

void main() {
  var persona1 = Persona();
  var persona2 = Persona.conNombreEdadSexo("Juan", 25, "H");
  var persona3 =
      Persona.conTodosLosAtributos("María", 30, "12345678", "M", 60.5, 165.0);

  print("Persona 1 - Nombre: ${persona1.nombre}, Edad: ${persona1.edad}");
  print("Persona 2 - Nombre: ${persona2.nombre}, Edad: ${persona2.edad}");
  print("Persona 3 - Nombre: ${persona3.nombre}, Edad: ${persona3.edad}");

  double imc = persona3.calcularIMC();
  if (imc == -1) {
    print("Persona 3 tiene bajo peso.");
  } else if (imc == 0) {
    print("Persona 3 está en su peso ideal.");
  } else {
    print("Persona 3 tiene sobrepeso.");
  }

  if (persona2.esMayorDeEdad()) {
    print("Persona 2 es mayor de edad.");
  } else {
    print("Persona 2 es menor de edad.");
  }

  persona1.comprobarSexo("X");
  print("Persona 1 - Sexo: ${persona1.sexo}");
}