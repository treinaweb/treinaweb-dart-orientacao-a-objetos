import 'pessoa.dart';

class Cliente extends Pessoa {
  bool ativo;

  Cliente(
      {required String nome,
      required int idade,
      required String sexo,
      required String email,
      required bool ativo})
      : this.ativo = ativo,
        super(nome: nome, idade: idade, sexo: sexo, email: email);

  Cliente.masculino(
      {required String nome,
      required int idade,
      required String email,
      required bool ativo})
      : this.ativo = ativo,
        super.construtorMasculino(nome: nome, idade: idade, email: email);

  Cliente.feminino(
      {required String nome,
      required int idade,
      required String email,
      required bool ativo})
      : this.ativo = ativo,
        super.construtorFeminino(nome: nome, idade: idade, email: email);
}
