import 'dart:io';
import 'dart:math';
import 'pessoa.dart';

void main(List<String> args) {
  var opcao;
  do {
    print("MENU: ");
    print("1 - Cadastrar cliente masculino");
    print("2 - Cadastrar cliente feminino");
    print("3 - Listar cliente");
    print("4 - sair");
    opcao = int.parse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        cadastrarClienteMasculino();
        break;
      case 2:
        cadastrarClienteFeminino();
        break;
      case 3:
        listarCliente();
        break;
      default:
    }
  } while (opcao != 3);
}

cadastrarClienteMasculino() {
  print('escreva o nome do cliente');
  final nome = stdin.readLineSync()!;
  print("escreva o email do cliente");
  final email = stdin.readLineSync()!;
  print("escreva a idade do cliente");
  final idade = int.parse(stdin.readLineSync()!);
  print("os dados cadastrados são");

  var cliente =
      new Pessoa.construtorMasculino(nome: nome, email: email, idade: idade);

  print(cliente.nome);
  print(cliente.email);
  print(cliente.idade);
  print(cliente.sexo);
}

cadastrarClienteFeminino() {
  print('escreva o nome do cliente');
  final nome = stdin.readLineSync()!;
  print("escreva o email do cliente");
  final email = stdin.readLineSync()!;
  print("escreva a idade do cliente");
  final idade = int.parse(stdin.readLineSync()!);
  print("os dados cadastrados são");

  var cliente =
      new Pessoa.construtorFeminino(nome: nome, email: email, idade: idade);

  print(cliente.nome);
  print(cliente.email);
  print(cliente.idade);
  print(cliente.sexo);
}

listarCliente() {}
