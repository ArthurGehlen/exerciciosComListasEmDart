void main() {
  List notas = [7, 5.2, 10, 9.2, 6.3, 7.5];
  double media = 0;

  for (double nota in notas) {
    media += nota;
  }

  print("Média das notas: $media");
}
