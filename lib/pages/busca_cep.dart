import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_cep2/flutter_cep2.dart';

class BuscaCepPage extends StatefulWidget {
  const BuscaCepPage({super.key});

  @override
  State<BuscaCepPage> createState() => _BuscaCepPageState();
}

class _BuscaCepPageState extends State<BuscaCepPage> {
  var cepController = TextEditingController();

  bool buscaRealizada = false;

  var cep = TextEditingController();
  var logradouro = TextEditingController();
  var complemento = TextEditingController();
  var bairro = TextEditingController();
  var localidade = TextEditingController();
  var uf = TextEditingController();
  var ibge = TextEditingController();
  var gia = TextEditingController();
  var ddd = TextEditingController();
  var siafi = TextEditingController();

  var erro = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Busca de CEP"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: TextFormField(
              controller: cepController,
              keyboardType: TextInputType.number,
              decoration:  InputDecoration(
                label: const Text("Digite CEP aqui"),
                suffixIcon: IconButton(
                  onPressed: () {
                    cepController.text = "";
                    cep.text = "";
                    logradouro.text = "";
                    bairro.text = "";
                    uf.text = "";
                    setState(() {
                      buscaRealizada = false;
                    });
                  }, 
                  icon: const Icon(Icons.close_outlined),
                ),
              )
              ),
          ),
          ElevatedButton(
            onPressed: () async {
              var buscaCep = flutter_cep2();
              try {
                if(cepController.text.length == 8) {
                  var result = await buscaCep.search(cepController.text);
                  cep.text = result.cep;
                  logradouro.text = result.logradouro;
                  complemento.text = result.complemento!;
                  bairro.text = result.bairro;
                  localidade.text = result.localidade;
                  uf.text = result.uf;
                  ibge.text = result.ibge;
                  ddd.text = result.ddd!;
                  // siafi.text = result.siaf!;
                  setState(() {
                    buscaRealizada = true;
                  });
                } else {
                  const snackBar = SnackBar(content: Text("CEP deve ter 8 números"));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                } 
              } catch (e) {
                log(e.toString());
                if (e.toString() == "Exception: Invalid number CEP") {
                  // ignore: use_build_context_synchronously
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("CEP Inválido")));
                }
                
              }
            }, 
            child: const Text("Consultar"),
          ),
          Visibility(
            visible: buscaRealizada,
            child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("CEP: ${cep.text}"),
                Text("Logradouro: ${logradouro.text}"),
                Text("Complemento: ${complemento.text}"),
                Text("Bairro: ${bairro.text}"),
                Text("Cidade: ${localidade.text}"),
                Text("UF: ${uf.text}"),
                Text("IBGE: ${ibge.text}"),
                Text("GIA: ${gia.text}"),
                Text("DDD: ${ddd.text}"),
              ],
            ),
          ),
          )
        ],
      )
    );
  }
}