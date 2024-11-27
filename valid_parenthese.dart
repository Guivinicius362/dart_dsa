void main() {
  isValid("()[]{}");
}

bool isValid(String s) {
  // "()[]{}"
  for (int i = 0; i < s.length - 1; i++) {
    print(s[i]);
    if (s[i] == s[i + 1]) print(true);
  }

  return false;
}
