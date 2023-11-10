import 'package:flutter/material.dart';
import 'package:projeto_flutter/repositories/linguagens_repository.dart';
import 'package:projeto_flutter/repositories/nivel_repository.dart';
import 'package:projeto_flutter/shared/widgets/text_label.dart';

class DadosCadastrais extends StatefulWidget {
  const DadosCadastrais({super.key});

  @override
  State<DadosCadastrais> createState() => _DadosCadastraisState();
}

class _DadosCadastraisState extends State<DadosCadastrais> {
  var nomeController = TextEditingController(text: "");
  var dataNacimentoController = TextEditingController(text: "");
  var nivelRepository = NivelRepository();
  var niveis = [];
  var linguagensRepository = LinguagensRepository();
  var linguagens = [];
  var nivelSelecionado = "";
  var linguagensSelecionadas = [];
  double salarioEscolhido = 0;
  int tempoExperiencia = 1;

  @override
  void initState() {
    niveis = nivelRepository.retornaNiveis();
    linguagens = linguagensRepository.retornaLinguagens();
    super.initState();
  }

  List<DropdownMenuItem<int>> returnItens(int qtdMax) {
    var itens = <DropdownMenuItem<int>>[];
    for (var i = 1; i <= qtdMax; i++) {
      itens.add(DropdownMenuItem(
        value: i,
        child: Text("$i anos"),
      ));
    }
    return itens;
  }

  bool salvando = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text("Meu Dados"),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: salvando
                ? const Center(child: CircularProgressIndicator())
                : ListView(
                    children: [
                      const TextLabel(texto: "Nome:"),
                      TextField(
                        controller: nomeController,
                      ),
                      const TextLabel(texto: "Data de Nascimento:"),
                      TextField(
                        readOnly: true,
                        controller: dataNacimentoController,
                        onTap: () async {
                          var dataNasc = await showDatePicker(
                              context: context,
                              initialDate: DateTime(1993, 8, 10),
                              firstDate: DateTime(1910, 9, 1),
                              lastDate: DateTime(2030, 8, 10));
                          if (dataNasc != null) {
                            var dia = dataNasc.day;
                            var mes = dataNasc.month;
                            var ano = dataNasc.year;
                            var dataFormatada = "$dia/$mes/$ano";
                            dataNacimentoController.text = dataFormatada;
                          }
                        },
                      ),
                      const TextLabel(texto: "Nivel de Experiência"),
                      Column(
                        children: niveis
                            .map((nivel) => RadioListTile(
                                dense: true,
                                title: Text(nivel.toString()),
                                selected: nivelSelecionado == nivel,
                                value: nivel.toString(),
                                groupValue: nivelSelecionado,
                                onChanged: (value) {
                                  setState(() {
                                    nivelSelecionado = value.toString();
                                  });
                                }))
                            .toList(),
                      ),
                      const TextLabel(texto: "Linguagens de Programação"),
                      Column(
                        children: linguagens
                            .map((linguagem) => CheckboxListTile(
                                dense: true,
                                title: Text(linguagem),
                                value:
                                    linguagensSelecionadas.contains(linguagem),
                                onChanged: (bool? value) {
                                  if (value!) {
                                    setState(() {
                                      linguagensSelecionadas.add(linguagem);
                                    });
                                  } else {
                                    setState(() {
                                      linguagensSelecionadas.remove(linguagem);
                                    });
                                  }
                                  setState(() {});
                                }))
                            .toList(),
                      ),
                      TextLabel(
                          texto:
                              "Tempo de Experiência: $tempoExperiencia anos"),
                      DropdownButton(
                          value: tempoExperiencia,
                          isExpanded: true,
                          items: returnItens(5),
                          onChanged: (value) {
                            setState(() {
                              tempoExperiencia = int.parse(value.toString());
                            });
                          }),
                      TextLabel(
                          texto:
                              "Pretenção Salarial R\$ ${salarioEscolhido.round()}"),
                      Slider(
                          min: 0,
                          max: 10000,
                          value: salarioEscolhido,
                          onChanged: (double value) {
                            setState(() {
                              salarioEscolhido = value;
                            });
                          }),
                      const SizedBox(height: 20),
                      Column(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            // decoration: const BoxDecoration(color: Colors.blue),
                            child: TextButton(
                                onPressed: () {
                                  if (nomeController.text.trim().isEmpty) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        const SnackBar(
                                            content: Text(
                                                "Nome deve ser preenchido")));
                                    return;
                                  }
                                  if (dataNacimentoController.text
                                      .trim()
                                      .isEmpty) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        const SnackBar(
                                            content: Text(
                                                "Data Precisa ser preenchida")));
                                    return;
                                  }
                                  if (nivelSelecionado.trim() == "") {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        const SnackBar(
                                            content: Text(
                                                "Precisa selecionar um nivel de experiência")));
                                    return;
                                  }
                                  if (linguagensSelecionadas.isEmpty) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        const SnackBar(
                                            content: Text(
                                                "Precisa selecionar pelo menos uma linguagem")));
                                    return;
                                  }
                                  if (tempoExperiencia == 0) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        const SnackBar(
                                            content: Text(
                                                "Tempo de experiência não pode ser zero")));
                                    return;
                                  }
                                  if (salarioEscolhido <= 1500.00) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        const SnackBar(
                                            content: Text(
                                                "Salário não pode ser menor que R\$ 1500.00")));
                                    return;
                                  }
                                  debugPrint("Nome: ${nomeController.text}");
                                  debugPrint(
                                      "Data de Nascimento: ${dataNacimentoController.text}");
                                  debugPrint(
                                      "Linguagens Selecionadas: $linguagensSelecionadas");
                                  debugPrint(
                                      "Tempo de experiência: $tempoExperiencia anos");
                                  debugPrint(
                                      "Pretenção salarial: R\$ ${salarioEscolhido.round()}");
                                  setState(() {
                                    salvando = true;
                                  });
                                  Future.delayed(const Duration(seconds: 5),
                                      () {
                                    setState(() {
                                      salvando = false;
                                    });
                                    Navigator.pop(context);
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        const SnackBar(
                                            content: Text(
                                                "Obrigado e volte sempre!")));
                                  });
                                },
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all(Colors.blue),
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15)))),
                                child: const Text(
                                  "Enviar",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
          )),
    );
  }
}
