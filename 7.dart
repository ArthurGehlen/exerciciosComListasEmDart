import 'lib/lib.dart';

void main() {
  // Para encontrar a mediana:
  // Ordenar a lista de idades em ordem crescente.
  // Verificar se o número de elementos da lista é ímpar ou par:
  // Se for ímpar, a mediana é o elemento do meio.
  // Se for par, a mediana é a média dos dois elementos centrais.

  List<int> lista_de_idades = [];

  for (int i = 1; i <= 7; i++) {
    int idade = inputInt("Digite a idade de uma pessoa: ");
    lista_de_idades.add(idade);
  }

  // Variáveis com o valor do indíce 0 da lista para encotrar a idade da pessoa mais velha e nova mais facilmente.
  int idade_mais_velha = lista_de_idades[0];
  int idade_mais_nova = lista_de_idades[0];

  // Terceira idade que foi informada
  print(lista_de_idades[3]);

  for (int idade in lista_de_idades) {
    if (idade > idade_mais_velha) {
      idade_mais_velha = idade;
    }
    if (idade < idade_mais_nova) {
      idade_mais_nova = idade;
    }
  }

  print("Idade da pessoa mais nova: $idade_mais_nova");
  print("Idade da pessoa mais velha: $idade_mais_velha");

  // Calculando a mediana
  lista_de_idades.sort();
  double mediana = 0;
  if (lista_de_idades.length % 2 != 0) {
    // Ímpar: mediana é o elemento central

    //Acessa o elemento central da lista ao calcular o índice do meio com o operador de divisão inteira (~/), que descarta a parte decimal do resultado. Em seguida, transforma o valor do elemento em um número do tipo double.
    mediana = lista_de_idades[lista_de_idades.length ~/ 2].toDouble();
  } else {
    // Par: mediana é a média dos dois elementos centrais

    int tamanho_lista = lista_de_idades.length; // Variável criada para diminuir o código

    // Pega os dois elementos centrais, dividindo o índice por dois e diminuindo um, e somando com o índice dividido por 2 (elemento central), e em seguida dividindo por 2.
    mediana = (lista_de_idades[tamanho_lista ~/ 2 - 1] + lista_de_idades[tamanho_lista ~/ 2]) / 2;
  }

  print("Mediana das idades: $mediana");
}
