import 'dart:io';

class NegativeError implements Exception {
  String? message; // Perbaikan: message bisa null
  NegativeError([this.message]);
}

void main(List<String> args) {
  int a;
  try {
    stdout.write('Masukkan bilangan non-negatif: ');
    a = int.parse(stdin.readLineSync()!); // Tambahkan ! untuk non-nullable
    if (a < 0) {
      throw NegativeError();
    }
    print('Anda memasukkan nilai $a.');
  } on FormatException catch (exception, stackTrace) {
    print('SALAH: nilai yang dimasukkan bukan bilangan.');
  } on NegativeError catch (exception, stackTrace) {
    print('SALAH: anda memasukkan nilai negatif.');
  } catch (exception, stackTrace) {
    print('SALAH: terjadi eksepsi bertipe $exception.');
  }
}