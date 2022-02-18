import 'pessoa.dart';

class Funcionario extends Pessoa {
  bool status;
  Funcionario(
    String nome,
    int idade,
    String sexo,
    String email,
  )   : this.status = true,
        super(nome: nome, idade: idade, sexo: sexo, email: email);
}
