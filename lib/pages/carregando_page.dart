import 'package:flutter/material.dart';

class CarregandoPage extends StatefulWidget {
  const CarregandoPage({super.key});

  @override
  State<CarregandoPage> createState() => _CarregandoPageState();
}

class _CarregandoPageState extends State<CarregandoPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          SizedBox(height: 30,),
          Text("Carregando...", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
          SizedBox(height: 30,),
          LinearProgressIndicator()
        ],
      ),
    );
  }
}