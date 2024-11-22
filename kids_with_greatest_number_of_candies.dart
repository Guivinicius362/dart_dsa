void main() {
  final x = [2, 3, 5, 1, 3];
  final ec = 3;
  final result = List.generate(x.length, (index) => false);

  int largest = x.reduce((a, b) => a > b ? a : b);
  for (int i = 0; i < x.length; i++) {
    if ((x[i] + ec) >= largest) result[i] = true;
  }

  print(result);
}
