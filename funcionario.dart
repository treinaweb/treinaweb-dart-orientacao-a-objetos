import 'pessoa.dart';

class Funcionario extends Pessoa {
  String status;
  Funcionario(
    String nome,
    int idade,
    String sexo,
    String email,
  )   : this.status = "empregado",
        super(nome: nome, idade: idade, sexo: sexo, email: email);

  @override
  void desativar() {
    this.status = "desempregado";
  }
}
