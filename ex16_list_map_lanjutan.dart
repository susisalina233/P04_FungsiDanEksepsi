import 'dart:io';

void printList(List<dynamic> myList) {
  // Tampilkan elemen myList
  myList.forEach((element) {
    stdout.write('$element ');
  });
  stdout.write('\n');
}

void main(List<String> args) {
  List<int> myList = [];
  List<int> list = [1, 2, 3, 4];

  // Tampilkan elemen list
  for (var bilangan in list) {
    stdout.write('Bilangan $bilangan ');
  }
  stdout.write('\n');

  // Operasi List
  myList.add(10);
  myList.addAll(list);
  myList.insert(1, 20);
  myList.insertAll(2, [30, 40, 50, 60, 20]);
  myList.remove(20);
  myList.removeLast();
  myList.removeAt(2);
  myList.removeRange(5, myList.length);
  myList.removeWhere((number) => number % 6 == 0);
  printList(myList);

  if (myList.contains(20)) {
    print('20 ditemukan');
  }

  myList.insertAll(1, [20, 30, 40]);
  myList.removeLast();
  printList(myList);

  list.insertAll(2, myList.sublist(2, 3));
  printList(list);

  list.sort((a, b) => b - a);
  printList(list);

  list.removeWhere((number) => number % 2 != 0);
  if (list.every((number) => number % 2 == 0)) {
    print('Semua Genap!');
  } else {
    print('Semua Ganjil!');
  }
  printList(list);

  list.clear();
  if (list.isEmpty) {
    print('List Kosong!');
  }

  myList.add(20);
  printList(myList);

  // Konversi List ke Set
  Set<int> mySet = myList.toSet();
  print(mySet.toString());

  // Konversi List ke Map
  List<String> strList = [];
  strList = myList.map((number) => 'Angka ' + number.toString()).toList();
  printList(strList);
}