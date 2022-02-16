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

  String get nome {
    return this._nome;
  }

  int get idade {
    return this._idade;
  }

  String get sexo {
    return this._sexo;
  }

  String get email {
    return this._email;
  }

  void set nome(String nome) {
    this._nome = nome;
  }

  void set idade(int idade) {
    this._idade = idade;
  }

  void set sexo(String sexo) {
    this._sexo = sexo;
  }

  void set email(String email) {
    this._email = email;
  }
}
