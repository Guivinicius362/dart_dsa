int removeElement(List<int> nums, int val) {
  compareElement(nums, 0, val);
  print(nums);
  return nums.length;
}

void compareElement(List<int> nums, int index, int target) {
  if (index > nums.length - 1) return;
  if (nums[index] == target) {
    final currentN = nums[index];
    nums.removeAt(index);
    compareElement(nums, index + 1, target);
  }
  return compareElement(nums, index + 1, target);
}

void main(List<String> args) {
  print(removeElement([0, 1, 2, 2, 3, 0, 4, 2], 2));
}
