import 'package:flutter/material.dart';
import 'package:projeto_flutter/controller/home_controller.dart';
import 'package:projeto_flutter/shared/widgets/card_location.dart';

class BuscaCepPage extends StatefulWidget {
  const BuscaCepPage({super.key});

  @override
  State<BuscaCepPage> createState() => _BuscaCepPageState();
}

final TextEditingController _cepController = TextEditingController();
final HomeController homeController = HomeController();

class _BuscaCepPageState extends State<BuscaCepPage> {
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
              TextFormField(
                controller: _cepController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  label: const Text("Digite aqui o CEP"),
                  suffixIcon: IconButton(
                    onPressed: () {
                      homeController.clear();
                      _cepController.text = "";
                    },
                    icon: const Icon(Icons.close_outlined),
                  )
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  if(_cepController.text.length == 8) {
                    homeController.buscaEndereco(cep: _cepController.text);
                  } else {
                    const snackBar = SnackBar(content: Text("CEP deve ter 8 números"));

                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                }, 
                style: ButtonStyle(padding: MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal: 100, vertical: 10))),
                child: const Text("Consultar"),
              ),
              const SizedBox(height: 30,),
              Visibility(
                visible: homeController.isLoading.value,
                child: const CircularProgressIndicator(),
              ),
              Visibility(
                visible: !homeController.isLoading.value && homeController.endereco.value != null,
                child: const CardLocationWidget(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
