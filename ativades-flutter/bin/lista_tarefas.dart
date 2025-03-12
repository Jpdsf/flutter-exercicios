import 'dart:io';


void mostrarLista(var lista){
  for (var l in lista){
     print(l);
  }
  if (lista.isEmpty){
    print("Lista vazia!");
}
}

void main(){
  var tarefas = <String>[];
  while(true){
    print("Gerenciador de Tarefas:\n1 para adicionar tarefas!\n2 para excluir tarefa!\n3 para listar tarefas!\n0 para sair!");
    String escolha = stdin.readLineSync()!;
    if (escolha == '0'){
      break;

    }else if (escolha == '1'){
      print("Qual a tarefa que deseja adicionar:");
      String tarefa = stdin.readLineSync()!;
      tarefas.add(tarefa);
      print("Tarefa adicionada com sucesso!");

    }else if (escolha == '2'){
      print("Lista de tarefas:\n");
      mostrarLista(tarefas);
      print("Qual a tarefa que deseja excluir:");
      String tarefa = stdin.readLineSync()!;
      if (tarefas.contains(tarefa)){
        tarefas.remove(tarefa);
        print("Tarefa removida com sucesso!");
      }else{
        print("Tarefa não encontrada!");
      }
    
    }else if (escolha == '3'){
      print("Lista de tarefas:\n");
      mostrarLista(tarefas);
      print("\n===================================\n");
    }

    
  }
}