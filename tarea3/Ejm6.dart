class Persona {
  String nombre;
  int edad;
  String dni;

  Persona(this.nombre, this.edad, this.dni);
}

class Cuenta {
  Persona titular;
  double cantidad;

  Cuenta(this.titular, [this.cantidad = 0]);

  double get getCantidad => cantidad;

  void mostrar() {
    print("Titular: ${titular.nombre}, Edad: ${titular.edad}, DNI: ${titular.dni}");
    print("Cantidad en la cuenta: $cantidad");
  }

  void ingresar(double cantidad) {
    if (cantidad > 0) {
      this.cantidad += cantidad;
    }
  }

  void retirar(double cantidad) {
    this.cantidad -= cantidad;
  }
}

void main() {
  var titular = Persona("Juan Pérez", 25, "12345678");
  var cuenta = Cuenta(titular, 1000.0);

  print("Datos de la cuenta:");
  cuenta.mostrar();

  cuenta.ingresar(500.0);
  cuenta.retirar(200.0);

  print("Después de operaciones:");
  cuenta.mostrar();
}