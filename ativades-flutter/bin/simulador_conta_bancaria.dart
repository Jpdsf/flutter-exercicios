import 'dart:io';

class Conta{
  String nome;
  String cpf;
  double saldo;

  Conta(this.nome, this.cpf, this.saldo);

  void deposito(double valor){
    this.saldo += valor;
    print("Saldo atualizado com sucesso!");
  }

  void saque(double valor){
    if(valor > this.saldo){
      print("Saldo insuficiente!");
    }else{
      this.saldo -= valor;
    }
  }

  void mostrarSaldo(){
    print("Seu saldo é RS ${this.saldo}");
  }
}

void main(){
  Conta c1 = Conta('Jp', '0123', 123002);

  c1.mostrarSaldo();
  c1.deposito(2000);
  c1.mostrarSaldo();
  c1.saque(12300000000);
  c1.saque(125001);
  c1.mostrarSaldo();
}