void main() {
  int segundos = 3666;
  List<int> tiempo = segundosATiempo(segundos);
  print(
      "$segundos segundos son ${tiempo[0]} horas, ${tiempo[1]} minutos y ${tiempo[2]} segundos");
}

List<int> segundosATiempo(int segundos) {
  int horas = segundos ~/ 3600;
  int minutos = (segundos % 3600) ~/ 60;
  int segundosRestantes = segundos % 60;
  return [horas, minutos, segundosRestantes];
}
