void main() {
  final list = [1, 3, 5, 6];
  print(searchInsert(list, 3));
}

// int findAllIndex(List<int> arg, int target, int index) {
//   var result = -1;

//   if (index == arg.length - 1) return result;

//   if (arg[index] == target) {
//     result = index;
//     return index;
//   }

//   if (arg[index + 1] > target) {
//     result = index + 1;
//     return result;
//   }

//   final answer = findAllIndex(arg, target, index + 1);
//   result = answer;
//   return result;
// }

int searchInsert(List<int> nums, int target) {
  int left = 0;
  int right = nums.length - 1;

  while (left <= right) {
    int mid = left + (right - left) ~/ 2; // Calculate mid index

    if (nums[mid] == target) {
      return mid; // Return index if target is found
    } else if (nums[mid] < target) {
      left = mid + 1; // Move search range to the right half
    } else {
      right = mid - 1; // Move search range to the left half
    }
  }

  // If not found, return the index where target should be inserted
  return left;
}
