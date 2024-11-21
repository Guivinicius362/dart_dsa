void main() {
  final x = [2, 3, 44, 55, 66, 88, 23, 22, 1, 10, 25, 52];
  bubble(x, x.length - 1, 0);
  print(x);
}

void bubble(List<int> arr, int r, int c) {
  if (r == 0) return;

  if (c < r) {
    if (arr[c] > arr[c + 1]) {
      int temp = arr[c];
      arr[c] = arr[c + 1];
      arr[c + 1] = temp;
    }

    bubble(arr, r, c + 1);
  } else {
    bubble(arr, r - 1, 0);
  }
}
