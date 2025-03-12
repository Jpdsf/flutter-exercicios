import 'dart:math';
import 'dart:io';
var random = Random();

String sorteioNome(var nomes){
  int indexSorteado = random.nextInt(nomes.length);
  return nomes[indexSorteado];
}

void main(){
  var nomes = <String>[];
  print("Bem vindo ao sorteio!");
  while(true){
    print("Adicione o nome das pessoas que vão ser sorteadas:\nDigite 0 para sair!");
    String nome = stdin.readLineSync()!;
    if (nome == '0'){
      break;
    }
    nomes.add(nome);
    print("$nome foi adicionado com sucesso!\n");
    
  }
  print("A pessoa sorteada foi: ${sorteioNome(nomes)}!");
}