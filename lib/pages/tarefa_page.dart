import 'package:flutter/material.dart';
import 'package:projeto_flutter/model/tarefa_model.dart';
import 'package:projeto_flutter/repositories/tarefa_repository.dart';

class TarefaPage extends StatefulWidget {
  const TarefaPage({super.key});

  @override
  State<TarefaPage> createState() => _TarefaPageState();
}

class _TarefaPageState extends State<TarefaPage> {
  var descricaoController = TextEditingController(text: "");
  var tarefaRepository = TarefaRepository();
  var naoConcluidos = false;

  var _tarefas = <Tarefa>[];

  @override
  void initState() {
    super.initState();
    obterTarefas();
  }

  void obterTarefas() async {
    if (naoConcluidos) {
      _tarefas = await tarefaRepository.listarPendentes();
    } else {
      _tarefas = await tarefaRepository.listarTarefas();
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),  
        onPressed: () {
          descricaoController.text = "";
          showDialog(context: context, builder: (BuildContext bc) {
            return AlertDialog(
              title: const Text("Adicionar Tarefa"),
              content: TextField(controller: descricaoController),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  }, 
                  child: const Text("Cancelar"),
                ),
                TextButton(
                  onPressed: () async {
                    await tarefaRepository.addTarefas(Tarefa(descricaoController.text, false));
                    debugPrint(tarefaRepository.listarTarefas().toString());
                    Navigator.pop(context);
                    setState(() {});
                  }, 
                  child: const Text("Salvar"),
                ),

              ],
            );
          });
        },
      ),
      appBar: AppBar(
        title: const Text("Tarefas"),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          const Text(
            "Tarefas",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Listar não concluidas apenas"),
                Switch(value: naoConcluidos, onChanged: (bool value) {
                  naoConcluidos = value;
                  obterTarefas();
                },)
              ],
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: ListView.builder(
                  itemCount: _tarefas.length,
                  itemBuilder: (BuildContext bc, int index) {
                    var tarefa = _tarefas[index];
                    return Dismissible(
                      onDismissed: (DismissDirection dismissDirection) async {
                        await tarefaRepository.excluirTarefa(tarefa.id);
                        obterTarefas();
                      },
                      key: Key(tarefa.id),
                      child: ListTile(
                        title: Text(
                          "Item: ${tarefa.descricao.toUpperCase()}", 
                          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                        trailing: Switch(
                          onChanged: (bool value) async {
                            await tarefaRepository.alterarTarefa(tarefa.id, value);
                            obterTarefas();
                          },
                          value: tarefa.concluido,
                        ),
                      ),
                    );
                  }
                ),
            ),
          ),
        ],
      ),
    );
  }
}