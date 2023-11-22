import 'package:flutter/material.dart';
import 'package:projeto_flutter/repositories/plant_id_repository.dart';

class TesteApiPage extends StatefulWidget {
  const TesteApiPage({super.key});

  @override
  State<TesteApiPage> createState() => _TesteApiPageState();
}

class _TesteApiPageState extends State<TesteApiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Testando API"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  PlantId.testeApi();
                });
              },
              child: const Text("Clique aqui"),
            
            ),
          ),
        ],
      ),
    );
  }
}