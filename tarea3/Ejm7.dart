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

class CuentaJoven extends Cuenta {
  double bonificacion;

  CuentaJoven(Persona titular, double bonificacion)
      : bonificacion = bonificacion,
        super(titular);

  double get getBonificacion => bonificacion;

  bool esTitularValido() {
    return titular.edad >= 18 && titular.edad < 25;
  }

  @override
  void retirar(double cantidad) {
    if (esTitularValido()) {
      super.retirar(cantidad);
    } else {
      print("No es posible retirar dinero en una cuenta joven no válida.");
    }
  }

  @override
  void mostrar() {
    print("Cuenta Joven");
    print("Bonificación: $bonificacion%");
    super.mostrar();
  }
}

void main() {
  var titular = Persona("Juan Pérez", 20, "12345678");
  var cuentaJoven = CuentaJoven(titular, 5.0);

  print("Datos de la cuenta joven:");
  cuentaJoven.mostrar();

  cuentaJoven.ingresar(500.0);
  cuentaJoven.retirar(200.0);

  print("Después de operaciones:");
  cuentaJoven.mostrar();
}