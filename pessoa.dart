class Pessoa {
  String _nome;
  int _idade;
  String _sexo;
  String _email;

  Pessoa({
    required nome,
    required idade,
    required sexo,
    required email,
  })  : this._nome = nome,
        this._idade = idade,
        this._sexo = sexo,
        this._email = email;

  Pessoa.construtorMasculino({required nome, required idade, required email})
      : this._sexo = 'Masculino',
        this._nome = nome,
        this._idade = idade,
        this._email = email;

  Pessoa.construtorFeminino({required nome, required idade, required email})
      : this._sexo = 'Feminino',
        this._nome = nome,
        this._idade = idade,
        this._email = email;
}
