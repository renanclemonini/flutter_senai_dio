import 'package:flutter/material.dart';
import 'package:projeto_flutter/model/endereco_model.dart';

class CardLocationWidget extends StatelessWidget {
  const CardLocationWidget({super.key, this.endereco});
  final EnderecoModel? endereco;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text("CEP: ${endereco?.cep}"),
            Text("Logradouro: ${endereco?.logradouro}"),
            Text("Complemento: ${endereco?.complemento}"),
            Text("Bairro: ${endereco?.bairro}"),
            Text("Cidade: ${endereco?.localidade}"),
            Text("DDD: ${endereco?.ddd}"),
            Text("UF: ${endereco?.uf}"),
          ],
        ),
      ),
    );
  }
}