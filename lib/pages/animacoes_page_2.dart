import 'package:flutter/material.dart';

class Animacoes extends StatefulWidget {
  const Animacoes({super.key});

  @override
  State<Animacoes> createState() => _AnimacoesState();
}

class _AnimacoesState extends State<Animacoes> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Animações 2")
        ),
        )
      );
  }
}