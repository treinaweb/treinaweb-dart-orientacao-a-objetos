import 'dart:io';
import 'dart:math';
import 'cliente.dart';
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

  var cliente = new Cliente.masculino(
      nome: nome, email: email, idade: idade, ativo: true);

  cliente.adicionarSobrenome('Sardinha');
  print(cliente.nome);
  print(cliente.email);
  print(cliente.idade);
  print(cliente.sexo);
  print(cliente.ativo);
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
      new Cliente.feminino(nome: nome, email: email, idade: idade, ativo: true);

  print(cliente.nome);
  print(cliente.email);
  print(cliente.idade);
  print(cliente.sexo);
  print(cliente.ativo);
}

listarCliente() {}
