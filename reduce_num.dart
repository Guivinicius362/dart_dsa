void main() {
  print(reduce(728, 0));
}

int reduce(int n, int steps) {
  if (n == 0) return steps;
  if (n % 2 == 0) {
    return reduce(n ~/ 2, steps + 1);
  }
  return reduce(n - 1, steps + 1);
}
