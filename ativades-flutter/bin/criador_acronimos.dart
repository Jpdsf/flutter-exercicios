import 'dart:io';

void main(){
  stdout.write("Digite a frase que quer transformar em Acrônimos: ");
  String frase = stdin.readLineSync()!;
  String acronimo = frase.split('').where((char) => char.toUpperCase() == char && char != " ").join("");
  print("O seu acronimo é $acronimo ");
}