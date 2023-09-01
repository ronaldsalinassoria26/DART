class Cuenta {
  String titular;
  double cantidad;

  // Constructor
  Cuenta(this.titular, [this.cantidad = 0]);

  void ingresar(double cantidad) {
    if (cantidad > 0) {
      this.cantidad += cantidad;
    }
  }

  void retirar(double cantidad) {
    if (cantidad > 0) {
      if (this.cantidad - cantidad < 0) {
        this.cantidad = 0;
      } else {
        this.cantidad -= cantidad;
      }
    }
  }
}

void main() {
  // Crear una instancia de la clase Cuenta
  var miCuenta = Cuenta("Juan Pérez", 1000);

  // Mostrar el estado inicial de la cuenta
  print("Cuenta de ${miCuenta.titular}: ${miCuenta.cantidad}");

  // Realizar operaciones en la cuenta
  miCuenta.ingresar(500);
  miCuenta.retirar(200);

  // Mostrar el estado de la cuenta después de las operaciones
  print("Nuevo saldo de ${miCuenta.titular}: ${miCuenta.cantidad}");
}
