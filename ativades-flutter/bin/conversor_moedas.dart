import 'dart:io';

void main(){
  print("Seja bem-vindo ao conversor de moedas!");
  var real = 1;
  var dolar = real * 5.79;
  var euro = real *  6.28;

  String identificador(){
      String? moedaOrigem = stdin.readLineSync()!;
      return moedaOrigem.toLowerCase();
  }

  print("Qual a moeda que você tem?");
  String? moedaOrigem = identificador();
  print("Certo, você tem $moedaOrigem, quer converter para qual moeda?");
  String? moedaDestino = identificador();

  print("Qual o valor que você quer converter?");
  double valorInicial = double.parse(stdin.readLineSync()!);

  if (moedaOrigem == 'dolar'){
    switch (moedaDestino){
      case 'real':
      double valorFinal = (valorInicial * dolar);
      print("Sua conversão de $moedaOrigem para $moedaDestino foi ${valorFinal.toStringAsFixed(2)}");

      case 'euro':
      double valorFinal = (valorInicial * dolar)/euro;
      print("Sua conversão de $moedaOrigem para $moedaDestino foi ${valorFinal.toStringAsFixed(2)}");

    }
  }
  else if(moedaOrigem == 'euro'){
    switch (moedaDestino){
      case 'real':
      double valorFinal = (valorInicial * euro);
      print("Sua conversão de $moedaOrigem para $moedaDestino foi ${valorFinal.toStringAsFixed(2)}");

      case 'dolar':
      double valorFinal = (valorInicial * euro)/dolar;
      print("Sua conversão de $moedaOrigem para $moedaDestino foi ${valorFinal.toStringAsFixed(2)}");

    }
  }

  else if(moedaOrigem == 'real'){
    switch (moedaDestino){
      case 'euro':
      double valorFinal = (valorInicial * euro);
      print("Sua conversão de $moedaOrigem para $moedaDestino foi ${valorFinal.toStringAsFixed(2)}");

      case 'dolar':
      double valorFinal = (valorInicial * dolar);
      print("Sua conversão de $moedaOrigem para $moedaDestino foi ${valorFinal.toStringAsFixed(2)}");

    }
  }

  else{
    print("Moeda não listada!");
  }
}