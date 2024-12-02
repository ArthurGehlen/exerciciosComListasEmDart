import 'lib/lib.dart';

void main() {
  List<int> arr = [];
  int user_input = inputInt("Digite um número inteiro: ");

  while (user_input != 0) {
    arr.add(user_input);
    user_input = inputInt("Digite um número inteiro: ");
  }

  arr.removeWhere((num) => num % 2 == 0);

  print("Lista de números digitados");
  print("Com os números pares removidos");
  print(arr);
}
