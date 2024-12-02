import 'lib/lib.dart';

void main() {
  List<String> arr = [];

  for (int i = 1; i <= 5; i++) {
    String palavra = inputStr("Digite uma palvra: ");
    arr.add(palavra);
  }

  String busca = inputStr("Digite uma palavra para buscar na lista: ");

  for (int i = 0; i <= arr.length - 1; i++) {
    if (arr[i] == busca) {
      print("A palavra foi encontrada");

      String nova_palavra = inputStr("Digite uma palvra para substituir: ");
      arr[i] = nova_palavra;
    } else {
      print("A palavra não foi encontrada");
    }
  }

  print("Lista atualizada: $arr");
}
