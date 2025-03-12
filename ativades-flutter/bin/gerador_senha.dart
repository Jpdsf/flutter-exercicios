import 'dart:io';
import 'dart:math';

String geradorSenha(int comprimento, bool especiais){
  var caracteres = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
  if (especiais == true){
    caracteres = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#+;?^~,';
  }
  
  var random = Random();

  return List.generate(comprimento, (index) {
    return caracteres[random.nextInt(caracteres.length)];
  }).join('');
}

void main() {
  print("Digite o tamanho da sua senha:");
  int comprimento = int.parse(stdin.readLineSync()!);
  print("Deseja incluir caracteres especiais?\nDigite: true ou false");
  bool? caracteresEspeciais = bool.parse(stdin.readLineSync()!);
  print("Quantas senhas você quer?");
  int quantidadeSenhas = int.parse(stdin.readLineSync()!);
  for (int i = 1; i < quantidadeSenhas+1; i++){
    print("Senha $i gerada: ${geradorSenha(comprimento, caracteresEspeciais)}");
  };
}