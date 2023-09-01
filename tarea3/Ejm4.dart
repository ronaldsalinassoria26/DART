class Contador {
  int _contador; // Atributo privado para el contador

  Contador() : _contador = 0; // Constructor por defecto

  Contador.conParametros(int valorInicial)
      : _contador = valorInicial; // Constructor con parámetros

  int get getContador => _contador;

  set setContador(int nuevoValor) {
    _contador = nuevoValor;
  }

  void incrementar() {
    _contador++;
  }

  void decrementar() {
    if (_contador > 0) {
      _contador--;
    }
  }
}

void main() {
  var contador1 = Contador();
  var contador2 = Contador.conParametros(10);

  print("Contador 1: ${contador1.getContador}");
  print("Contador 2: ${contador2.getContador}");

  contador1.incrementar();
  contador2.decrementar();

  print("Después de operaciones:");
  print("Contador 1: ${contador1.getContador}");
  print("Contador 2: ${contador2.getContador}");

  contador1.setContador = 5;
  contador2.setContador = 15;

  print("Después de establecer nuevos valores:");
  print("Contador 1: ${contador1.getContador}");
  print("Contador 2: ${contador2.getContador}");
}