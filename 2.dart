import 'lib/lib.dart';

void main() {
  List<int> arr = [];

  for (int i = 0; i < 5; i++) {
    int num = inputInt("Digite um número inteiro para armazenar na lista: ");
    arr.add(num);
  }

  // Econtrando a soma dos números da lista
  int sum = 0;
  for (int num in arr) {
    sum += num;
  }
  print("Soma: $sum");

  // Inicializando as variáveis com o index do array em 0 para evitar erros.
  int menor_num = arr[0];
  int maior_num = arr[0];

  // Verificando o maior número na lista.
  for (int i = 1; i < arr.length; i++) {
    if (arr[i] > maior_num) {
      maior_num = arr[i];
    }

    if (arr[i] < menor_num) {
      menor_num = arr[i];
      // Removendo o menor número da lista
      arr.remove(menor_num);
    }
  }
  print("Maior número: $maior_num");

  print("Lista atualizada: $arr");
}
