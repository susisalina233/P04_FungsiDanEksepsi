void printString(String s, [int? n]) { // Perbaikan: n bisa null
  if (n == null) {
    n = 1;
  }
  for (int i = 0; i < n; i++) {
    print('${i + 1}. $s');
  }
}

void main(List<String> args) {
  print('Satu Argumen');
  printString('Teknik Informatika');
  print('\nDua Argumen');
  printString('Rekayasa Perangkat Lunak', 3);
}