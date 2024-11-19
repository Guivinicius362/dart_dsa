void main() {
  print(sorted([1, 2, 3, 4, 3, 5, 6, 7, 8], 0));
}

bool sorted(List<int> arr, index) {
  if (index == arr.length - 1) return true;

  return arr[index] < arr[index + 1] && sorted(arr, index + 1);
}
