import 'dart:math';
import 'dart:io';
var random = Random();

void main(){
  int numGerado = random.nextInt(100);
  print("Tente adivinhar o número gerado entre 0 e 100");
  
  int numDigitado = -1;
  while (numDigitado != numGerado){
    numDigitado = int.parse(stdin.readLineSync()!);
    if (numDigitado > numGerado){
      print("Dica: $numDigitado é maior que x!");
    } else if (numDigitado < numGerado){
      print("Dica: $numDigitado é menor que x!");
    }
  }

  print("Parabéns! Você acertou o número gerado: $numGerado");

}