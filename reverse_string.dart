void main() {
  final s = 'the sky is blue';
  final x = StringBuffer();
  final ssplited = s.split(' ');
  for (int i = ssplited.length - 1; i >= 0; i--) {
    x.write('${ssplited[i]} ');
  }
  print(x);
}
