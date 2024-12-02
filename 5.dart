import 'lib/lib.dart';

void main() {
  List<String> lista_de_pedidos = [];

  String pedido = inputStr("O que você deseja comer?: ");
  lista_de_pedidos.add(pedido);
  String continuar = inputStr("Deseja fazer mais algum pedido?: ");

  while (continuar != "N") {
    pedido = inputStr("O que você deseja comer?: ");
    lista_de_pedidos.add(pedido);
    continuar = inputStr("Deseja fazer mais algum pedido?: ");
  }

  lista_de_pedidos.sort();
  print("Itens pedidos em ordemo alfabética: $lista_de_pedidos");
}
