class Pessoa {
  String nome;
  int idade;
  String sexo;
  String email;

  Pessoa(
      {required this.nome,
      required this.idade,
      required this.sexo,
      required this.email});

  Pessoa.construtorMasculino(
      {required this.nome, required this.idade, required this.email})
      : this.sexo = 'Masculino';

  Pessoa.construtorFeminino(
      {required this.nome, required this.idade, required this.email})
      : this.sexo = 'Feminino';
}
