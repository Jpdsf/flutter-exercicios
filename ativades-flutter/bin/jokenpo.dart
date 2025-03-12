import 'dart:io';
import 'dart:math';
var random = Random();

void main(){
    int jogador = 0;
    int maquina = 0;

    const jogadas = <String>['pedra', 'papel', 'tesoura'];

  while(true){
    stdout.write("Qual a sua jogada?\nPedra, Papel ou Tesoura (ou 'sair' para encerrar): ");    

    String jogadaJogador = (stdin.readLineSync()!).toLowerCase();
    
    if(jogadaJogador == 'sair'){
      break;
    }
    String jogadaMaquina = jogadas[random.nextInt(jogadas.length)];
    
    if(jogadaJogador == jogadaMaquina){
      print("\nEmpateeeeeeeeeeeeeee!\n");
      continue;
    }

    if((jogadaJogador == 'pedra' && jogadaMaquina == 'tesoura') || 
    (jogadaJogador == 'tesoura' && jogadaMaquina == 'papel') ||
    (jogadaJogador == 'papel' && jogadaMaquina == 'pedra')){
      print('\nJogador ganhou!\n');
      jogador++;
    }else{
      print('\nMaquina ganhou!\n');
      maquina++;
    }

    print("\nPlacar!");
    print("Jogador: ${jogador}");
    print("Maquina: ${maquina}\n");

  }
}