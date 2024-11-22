void main() {
  final word1 = 'abcd';
  final word2 = 'pq';

  int i = 0;
  int j = 0;
  final result = StringBuffer();

  while (i < word1.length && j < word2.length) {
    result.write(word1[i]);
    result.write(word2[j]);
    i++;
    j++;
  }

  while (i < word1.length) {
    result.write(word1[i]);
    i++;
  }

  while (j < word2.length) {
    result.write(word2[j]);
    j++;
  }

  print(result);
}
