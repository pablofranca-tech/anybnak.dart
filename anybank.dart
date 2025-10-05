void main() {
  Conta contaMatheus = Conta("Matheus", 1000);
  Conta contaRoberta = Conta("Roberta", 1000);

  List<Conta> contas = <Conta>[contaMatheus, contaRoberta];

  for (Conta conta in contas) {
    print(conta.titular);
    print(conta._saldo);
  }

  contaRoberta._saldo = 5000;

  print(contaRoberta._saldo);

  contaMatheus.receber(500);

  print(contaMatheus.titular);
  print(contaMatheus._saldo);

  contaMatheus.enviar(200);

  print(contaMatheus.titular);
  print(contaMatheus._saldo);
}

class Conta {
  String titular;
  double _saldo;

  Conta(this.titular, this._saldo);

  void receber(double valor) {
    _saldo += valor;
  }

  void enviar(double valor) {
    if (_saldo >= valor) {
      _saldo -= valor;
    }
  }
}

/// Orientaçao a objetos forma representativa de escrever código com classes, paradgmas em dart
/// Class Casa{ double metros; String cor;}
/// class serve como molde ou uma instruçao de montar informações
/// Objeto e uma variavel criada a partir de uma class
///dart run anybank.dart
