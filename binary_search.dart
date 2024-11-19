void main() {
  final arr = [1, 3, 56, 78, 99, 100];
  final target = 78;
  print(search(arr, target, 0, arr.length - 1));
}

int search(List<int> arr, int target, int s, int e) {
  if (s > e) return -1;

  int m = (s + (e - s) / 2).toInt();
  if (arr[m] == target) return m;
  if (target < arr[m]) return search(arr, target, s, m - 1);
  return search(arr, target, m + 1, e);
}
