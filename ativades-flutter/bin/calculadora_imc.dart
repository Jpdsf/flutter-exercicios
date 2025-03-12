import 'dart:io';

void main(){
  stdout.write("Digite o seu peso (em kg): ");
  double peso = double.parse(stdin.readLineSync()!);

  stdout.write("Digite a sua altura (em metros): ");
  double altura = double.parse(stdin.readLineSync()!);

  double imc = peso / (altura * altura);

  print("Seu IMC é: ${imc.toStringAsFixed(2)}");
  print("A sua classificação é: ");
  switch (imc) {
  case < 16:
    print("Dialeza severa!");
    break;

  case < 17:
    print("Dialeza moderada!");
    break;

  case < 18.5:
    print("Dificina leve!");
    break;

  case < 25:
    print("Normal!");
    break;

  case < 30:
    print("Sobrepeso!");
    break;

  case < 35:
    print("Obesidade grau 1!");
    break;
  
  case < 40:
    print("Obesidade grau 2!");
    break;
  
  default:
    print("Obesidade grau 3!");
    break;

}
}