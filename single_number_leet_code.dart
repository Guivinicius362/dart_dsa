// XOR algorithm
void main() {
  final nums = [4, 1, 2, 1, 2];

  int result = 0;

  for (var n in nums) {
    result ^= n;
  }

  print(result);
}
