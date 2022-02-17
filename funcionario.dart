import 'pessoa.dart';

class Funcionario extends Pessoa {
  String cargo;
  bool vida;

  Funcionario(String nome, int idade, String sexo, String email, String cargo,
      bool vida)
      : this.cargo = cargo,
        this.vida = vida,
        super(nome: nome, idade: idade, sexo: sexo, email: email);

  @override
  void chave() {
    this.cargo = 'desempregado';
    this.vida = false;
  }
}
