import 'dart:io';
import 'cliente.dart';

List listaCliente = [];
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
  } while (opcao != 4);
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
      nome: nome, email: email, idade: idade, status: true);

  print(cliente.status);
  cliente.desativar();
  print(cliente.status);

  listaCliente.add(cliente);

  cliente.adicionarSobrenome('Sardinha');

  print(cliente.toString());
}

cadastrarClienteFeminino() {
  print('escreva o nome do cliente');
  final nome = stdin.readLineSync()!;
  print("escreva o email do cliente");
  final email = stdin.readLineSync()!;
  print("escreva a idade do cliente");
  final idade = int.parse(stdin.readLineSync()!);
  print("os dados cadastrados são");

  var cliente = new Cliente.feminino(
      nome: nome, email: email, idade: idade, status: true);
  listaCliente.add(cliente);

  print(cliente.nome);
  print(cliente.email);
  print(cliente.idade);
  print(cliente.sexo);
  print(cliente.status);
}

listarCliente() {
  print("A lista de clientes é:");
  print(listaCliente.map((cleinte) {
    return cleinte.nome;
  }));
}
