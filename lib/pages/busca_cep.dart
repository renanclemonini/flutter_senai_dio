import 'package:flutter/material.dart';
import 'package:projeto_flutter/controller/home_controller.dart';

class BuscaCepPage extends StatefulWidget {
  const BuscaCepPage({super.key});

  @override
  State<BuscaCepPage> createState() => _BuscaCepPageState();
}

final TextEditingController _cepController = TextEditingController();
final HomeController homeController = HomeController();

class _BuscaCepPageState extends State<BuscaCepPage> {
  bool carregando = true;

  String resultado = "Seu Cep irá aparecer aqui";

  void buscaCep() {}

  @override
  void initState() {
    homeController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Busca CEP"),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 50,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Digite CEP para consulta",
                  labelStyle: TextStyle(fontWeight: FontWeight.bold),
                ),
                controller: _cepController,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: buscaCep,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)),
                  padding: const EdgeInsets.all(10.0),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Buscar",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 30),
                child: Text(
                  resultado,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
