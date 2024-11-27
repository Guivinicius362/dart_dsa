void main() {
  print(mergeSort([3, 33, 10, 22, 18, 2, 1, 10, 13, 15]));
}
// nlogn

List<int> mergeSort(List<int> arr) {
  if (arr.length == 1) return arr;

  int mid = arr.length ~/ 2;

  List<int> left = mergeSort(arr.sublist(0, mid));
  List<int> right = mergeSort(arr.sublist(mid, arr.length));

  return merge(left, right);
}

List<int> merge(List<int> left, List<int> right) {
  List<int> mix = List.generate(left.length + right.length, (_) => 0);

  int leftPointer = 0;
  int rightPointer = 0;
  int mixPointer = 0;

  while (leftPointer < left.length && rightPointer < right.length) {
    if (left[leftPointer] < right[rightPointer]) {
      mix[mixPointer] = left[leftPointer];
      leftPointer++;
    } else {
      mix[mixPointer] = right[rightPointer];
      rightPointer++;
    }
    mixPointer++;
  }

  while (leftPointer < left.length) {
    mix[mixPointer] = left[leftPointer];
    leftPointer++;
    mixPointer++;
  }
  while (rightPointer < right.length) {
    mix[mixPointer] = right[rightPointer];
    rightPointer++;
    mixPointer++;
  }

  return mix;
}
