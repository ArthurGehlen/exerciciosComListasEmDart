import 'lib/lib.dart';

int count_num_in_arr(List<double> arr, double num) {
  int count = 0;
  for (double value in arr) {
    if (value == num) {
      count++;
    }
  }
  return count;
}

void main() {
  List<double> arr = [];

  double user_input = inputDouble("Digite um número real: ");
  arr.add(user_input);
  String continuar = inputStr("Deseja adicionar mais algum número? (S/N): ");

  while (continuar.toUpperCase() != "N") {
    user_input = inputDouble("Digite um número real: ");
    arr.add(user_input);
    continuar = inputStr("Deseja adicionar mais algum número? (S/N): ");
  }

  int quant_dois = count_num_in_arr(arr, 2.0);
  int quant_cinco_meio = count_num_in_arr(arr, 5.5);

  if (quant_dois == 0) {
    print("Não há nenhum número igual a 2 na lista");
  } else {
    print("Quantidade de 2 na lista: $quant_dois");
  }

  if (quant_cinco_meio == 0) {
    print("Não existe o número 5.5 na lista");
  } else {
    print("Quantidade de 5.5 na lista: $quant_cinco_meio");
  }
}
