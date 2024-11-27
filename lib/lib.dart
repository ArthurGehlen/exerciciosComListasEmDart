import "dart:io";

String inputStr(String msg) {
  /* Esta função escreve a mensagem "msg" na tela e retorna uma String 
  digitada pelo usuario */
  stdout.write(msg);
  String txt = stdin.readLineSync()!;
  return txt;
}

int inputInt(String msg) {
  /* Esta função escreve a mensagem "msg" na tela e retorna um número inteiro
  digitado pelo usuario */
  stdout.write(msg);
  int numInt = int.parse(stdin.readLineSync()!);
  return numInt;
}

double inputDouble(String msg) {
  /* Esta função escreve a mensagem "msg" na tela e retorna um número real
  digitado pelo usuario */
  stdout.write(msg);
  double numDouble = double.parse(stdin.readLineSync()!);
  return numDouble;
}

void main() {
  
}
