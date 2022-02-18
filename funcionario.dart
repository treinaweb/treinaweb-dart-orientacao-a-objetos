import 'pessoa.dart';

class Funcionario extends Pessoa {
  Funcionario(String nome, int idade, String sexo, String email, String cargo,
      bool vida)
      : super(nome: nome, idade: idade, sexo: sexo, email: email);
}
