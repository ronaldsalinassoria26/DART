class Cuenta {
  String nombre;
  String dni;
  double cantidad;

  Cuenta() : nombre = '', dni = '', cantidad = 0.0;

  Cuenta.conParametros(this.nombre, this.dni, this.cantidad);

  double get getCantidad => cantidad;

  set setCantidad(double nuevaCantidad) {
    if (nuevaCantidad >= 0) {
      cantidad = nuevaCantidad;
    }
  }

  void ingreso(double cantidad) {
    if (cantidad > 0) {
      this.cantidad += cantidad;
    }
  }

  void reintegro(double cantidad) {
    if (cantidad > 0 && cantidad <= this.cantidad) {
      this.cantidad -= cantidad;
    }
  }

  void transferencia(Cuenta destino, double cantidad) {
    if (cantidad > 0 && cantidad <= this.cantidad) {
      this.cantidad -= cantidad;
      destino.cantidad += cantidad;
    }
  }
}

void main() {
  var cuenta1 = Cuenta.conParametros("Juan Pérez", "12345678", 1000.0);
  var cuenta2 = Cuenta.conParametros("María López", "98765432", 1500.0);

  print("Cuenta 1 - Nombre: ${cuenta1.nombre}, DNI: ${cuenta1.dni}, Cantidad: ${cuenta1.getCantidad}");
  print("Cuenta 2 - Nombre: ${cuenta2.nombre}, DNI: ${cuenta2.dni}, Cantidad: ${cuenta2.getCantidad}");

  cuenta1.ingreso(500.0);
  cuenta1.reintegro(200.0);
  cuenta1.transferencia(cuenta2, 300.0);

  print("Después de operaciones:");
  print("Cuenta 1 - Cantidad: ${cuenta1.getCantidad}");
  print("Cuenta 2 - Cantidad: ${cuenta2.getCantidad}");
}