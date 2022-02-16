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
  var cliente = new Pessoa();
  print('escreva o nome do cliente');
  cliente.nome = stdin.readLineSync()!;
  print("escreva o email do ${cliente.nome}");
  cliente.email = stdin.readLineSync()!;
  print("escreva o sexo do ${cliente.nome}");
  cliente.sexo = stdin.readLineSync()!;
  print("escreva a idade do ${cliente.nome}");
  cliente.idade = int.parse(stdin.readLineSync()!);
  print("os dados cadastrados são");
  print(cliente.nome);
  print(cliente.email);
  print(cliente.idade);
  print(cliente.sexo);
}

listarCliente() {}
