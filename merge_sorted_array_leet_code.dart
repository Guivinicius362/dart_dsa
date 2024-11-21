// void merge(List<int> nums1, int m, List<int> nums2, int n) {
//   // [1,2,3,0,0,0] m = 3 [2,5,6] n = 3
//   int j = 0;
//   for (int i = m; i < nums1.length; i++) {
//     nums1[i] = nums2[j];
//     j++;
//   }
//   bubble(nums1, nums1.length - 1, 0);
//   print(nums1);
// }

// void bubble(List<int> arr, int r, int c) {
//   if (r == 0) return;

//   if (c < r) {
//     if (arr[c] > arr[c + 1]) {
//       int temp = arr[c];
//       arr[c] = arr[c + 1];
//       arr[c + 1] = temp;
//     }

//     bubble(arr, r, c + 1);
//   } else {
//     bubble(arr, r - 1, 0);
//   }
// }

// O (N)2;

void merge(List<int> nums1, int m, List<int> nums2, int n) {
  int p1 = m - 1; // Ponteiro para o final de nums1 válido
  int p2 = n - 1; // Ponteiro para o final de nums2
  int p = m + n - 1; // Ponteiro para o final de nums1

  // Percorre os arrays de trás para frente e mescla
  while (p1 >= 0 && p2 >= 0) {
    if (nums1[p1] > nums2[p2]) {
      nums1[p] = nums1[p1];
      p1--;
    } else {
      nums1[p] = nums2[p2];
      p2--;
    }
    p--;
  }

  // Copia elementos restantes de nums2, se houver
  while (p2 >= 0) {
    nums1[p] = nums2[p2];
    p2--;
    p--;
  }

  print(nums1);
}

void main() {
  merge([1, 2, 3, 0, 0, 0], 3, [2, 5, 6], 3);
}
