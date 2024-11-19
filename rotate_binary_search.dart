void main() {
  final x = [5, 7, 9, 0, 1, 2, 3, 4];
  print(search(x, 3, 0, x.length - 1));
}

int search(List<int> arg, int target, int s, int e) {
  if (s > e) return -1;

  int m = (s + (e - s) / 2).toInt();

  if (arg[m] == target) return m;
  //      5         1
  if (arg[s] <= arg[m]) {
    // sorted
    if (target >= arg[s] && target <= arg[m]) {
      return search(arg, target, s, m - 1);
    } else {
      return search(arg, target, m + 1, e);
    }
  }
  if (target >= m && target <= arg[e]) {
    return search(arg, target, m + 1, e);
  }
  return search(arg, target, s, m - 1);
}
