import 'lib/lib.dart';

void main() {
  List<String> arr = <String>[];

  for (int i = 0; i < 5; i++) {
    String name = inputStr("Digite o nome de uma pessoa para adicionar à lista: ");
    arr.add(name);
  }

  print(arr);

  // Penúltima pessoa da lista
  print(arr[3]);

  // Excluindo o primeiro nome informado
  arr.removeAt(0);
  print(arr);

  // Todos os nomes da lista em ordem alfabética
  arr.sort();
  print(arr);

  // Verificando se o nome "Paulo" existe na lista
  arr.contains("Paulo") ? print("O nome Paulo existe na lista") : print("O nome paulo não existe na lista");
}
