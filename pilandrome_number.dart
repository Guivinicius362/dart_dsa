import 'dart:math';

void main() {
  final x = 131;
  print(x == reverse(x));
}

num reverse(int n) {
  // Caso base: quando n for 0, retorne 0
  if (n == 0) return 0;

  // Calcula o último dígito de n
  int lastDigit = n % 10;

  // Calcula os dígitos restantes de n
  int remainingDigits = n ~/ 10;

  // Calcula a quantidade de casas decimais nos dígitos restantes
  int digitCount =
      remainingDigits > 0 ? (remainingDigits.toString().length) : 0;

  // Retorna o último dígito multiplicado pela potência adequada de 10, somado ao valor recursivo
  return lastDigit * pow(10, digitCount).toInt() + reverse(remainingDigits);
}
