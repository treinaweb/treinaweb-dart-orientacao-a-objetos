import 'dart:io';
import 'pessoa.dart';

void main(List<String> args) {
  var opcao;
  do {
    print("MENU: ");
    print("1 - Cadastrar cliente");
    print("2 - Listar cliente");
    print("3 - sair");
    opcao = int.parse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        cadastrarCliente();
        break;
      case 2:
        listarCliente();
        break;
      default:
    }
  } while (opcao != 3);
}

cadastrarCliente() {
  print('escreva o nome do cliente');
  final nome = stdin.readLineSync()!;
  print("escreva o email do cliente");
  final email = stdin.readLineSync()!;
  print("escreva o sexo do cliente");
  final sexo = stdin.readLineSync()!;
  print("escreva a idade do cliente");
  final idade = int.parse(stdin.readLineSync()!);
  print("os dados cadastrados são");

  var cliente = new Pessoa(nome: nome, email: email, idade: idade, sexo: sexo);

  print(cliente.nome);
  print(cliente.email);
  print(cliente.idade);
  print(cliente.sexo);
}

listarCliente() {}
