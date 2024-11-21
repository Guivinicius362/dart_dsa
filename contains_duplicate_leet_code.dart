import 'dart:collection';

class Solution {
  bool containsDuplicate(List<int> nums) {
    final duplicates = HashMap();
    for (int i = 0; i < nums.length; i++) {
      if (duplicates.containsValue(nums[i])) {
        return true;
      } else {
        duplicates[i] = nums[i];
      }
    }

    return false;
  }
}

bool containsDuplicate(List<int> nums) {
  final seen = <int>{}; // Um Set para armazenar números únicos
  for (final num in nums) {
    if (seen.contains(num)) {
      return true; // Retorna true se encontrar um duplicado
    }
    seen.add(num); // Adiciona o número ao Set
  }
  return false; // Retorna false se não encontrar duplicados
}


// bool? findDuplicates(List<int> nums, int r, int c) {
//   if (r == 0) return null;

//   if (c < r) {
//     if (nums[c] == nums[c + 1]) {
//       return true;
//     }
//     findDuplicates(nums, r, c + 1);
//   } else {
//     findDuplicates(nums, r - 1, 0);
//   }

//   return false;
// }
