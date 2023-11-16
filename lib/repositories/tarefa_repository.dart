import 'package:projeto_flutter/model/tarefa_model.dart';

class TarefaRepository {
  final List<Tarefa> _tarefas = [];

  Future<void> addTarefas(Tarefa tarefa) async {
    await Future.delayed(const Duration(milliseconds: 100));
    _tarefas.add(tarefa);
  }

  Future<void> alterarTarefa(String id, bool status) async {
    await Future.delayed(const Duration(milliseconds: 0));
    _tarefas.where((tarefa) => tarefa.id == id).first.concluido = status;
  }

  Future<void> excluirTarefa(String id,) async {
    await Future.delayed(const Duration(milliseconds: 0));
    _tarefas.remove(_tarefas.where((tarefa) => tarefa.id == id).first);
  }

  Future<List<Tarefa>> listarTarefas() async {
    await Future.delayed(const Duration(milliseconds: 0));
    return _tarefas;
  }

  Future<List<Tarefa>> listarPendentes() async {
    await Future.delayed(const Duration(milliseconds: 0));
    return _tarefas.where((tarefa) => !tarefa.concluido).toList();
  }
}