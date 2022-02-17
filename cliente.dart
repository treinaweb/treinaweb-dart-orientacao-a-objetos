import 'pessoa.dart';

class Cliente extends Pessoa {
  bool status;

  Cliente(
      {required String nome,
      required int idade,
      required String sexo,
      required String email,
      required bool status})
      : this.status = status,
        super(nome: nome, idade: idade, sexo: sexo, email: email);

  Cliente.masculino(
      {required String nome,
      required int idade,
      required String email,
      required bool status})
      : this.status = status,
        super.construtorMasculino(nome: nome, idade: idade, email: email);

  Cliente.feminino(
      {required String nome,
      required int idade,
      required String email,
      required bool status})
      : this.status = status,
        super.construtorFeminino(nome: nome, idade: idade, email: email);

  @override
  String toString() {
    return "O cliente de nome ${this.nome} possui ${this.idade} anos " +
        "com sexo ${this.sexo} email ${this.email} e status ${this.status}";
  }

  @override
  void chave() {
    this.status = false;
  }
}
