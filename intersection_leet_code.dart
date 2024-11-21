List<int> intersection(List<int> nums1, List<int> nums2) {
  int p1 = 0;
  int p2 = 0;

  while (p1 <= nums1.length && p2 <= nums2.length) {
    p1++;
    p2++;
  }

  return [];
}

void main() {
  intersection([4, 9, 5], [9, 4, 9, 8, 4]);
}
