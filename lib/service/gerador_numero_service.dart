import 'dart:math';

class GeradorNumeroAleatorioService{
  static int geradorNumero(int numMaximo) {
    Random numeroGerado = Random();
    return numeroGerado.nextInt(numMaximo);
  }
}