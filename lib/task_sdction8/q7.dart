// Q7: Temperature Converter
// - Convert this list of Celsius temps [0, 20, 37, 100] to Fahrenheit.
// - Print only the converted values above 90°F.
void main() {
  List<int> celsiusTemps = [0, 20, 37, 100];
  List<double> fahrenheitTemps =
      celsiusTemps.map((c) => (c * 9 / 5) + 32).where((f) => f > 90).toList();
  print("Fahrenheit temps above 90°F: ${fahrenheitTemps.join(', ')}");
}
