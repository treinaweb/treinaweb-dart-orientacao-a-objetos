import 'pessoa.dart';
import 'repositorio.dart';

class RepositorioCliente implements Repositorio {
  @override
  List listaClientes = [];

  @override
  void cadastrar(cliente) {
    listaClientes.add(cliente);
  }

  @override
  void listar() {
    print("A lista de clientes é:");
    print(listaClientes.map((cleinte) {
      return cleinte.nome;
    }));
  }
}
