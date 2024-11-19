void main() {
  final list = [1, 2, 3, 4, 4, 5, 6, 4, 8, 4];
  print(findAllIndex(list, 4, 0));
}

List<int> findAllIndex(List<int> arg, int target, int index) {
  final list = <int>[];

  if (index == arg.length) return list;

  if (arg[index] == target) {
    list.add(index);
  }

  final answer = findAllIndex(arg, target, index + 1);
  list.addAll(answer);
  return list;
}
