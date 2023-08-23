void main() {
  double celsius = 25;
  double fahrenheit = celsiusAFahrenheit(celsius);
  double kelvin = celsiusAKelvin(celsius);
  print("$celsius grados Celsius son $fahrenheit grados Fahrenheit");
  print("$celsius grados Celsius son $kelvin grados Kelvin");
}

double celsiusAFahrenheit(double celsius) {
  return (celsius * 9 / 5) + 32;
}

double celsiusAKelvin(double celsius) {
  return celsius + 273.15;
}
