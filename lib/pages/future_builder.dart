import 'package:flutter/material.dart';
import 'package:projeto_flutter/pages/carregando_page.dart';

class FutureBuilderPage extends StatefulWidget {
  const FutureBuilderPage({super.key});

  @override
  State<FutureBuilderPage> createState() => _FutureBuilderPageState();
}

class _FutureBuilderPageState extends State<FutureBuilderPage> {
  Future<String> getImagem1() async =>
      await Future.delayed(const Duration(seconds: 7), () {
        return "Imagem 1";
      });

  Future<Image> getImagemUm() async {
    await Future.delayed(const Duration(seconds: 10));
    return Image.network(
      "https://upload.wikimedia.org/wikipedia/commons/0/06/Google-apps-training-logo.png");
  }

  Future<String> getImagem2() async =>
      await Future.delayed(const Duration(seconds: 3), () {
        return 'Imagem 2';
      });

  Future<String> getImagem3() async =>
      await Future.delayed(const Duration(seconds: 12), () {
        return 'Imagem 3';
      });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Future Builder"),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                child: FutureBuilder(
                    future: getImagem1(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Column(
                          children: [
                            Image.network(
                                "https://upload.wikimedia.org/wikipedia/commons/0/06/Google-apps-training-logo.png"),
                            Text(snapshot.requireData, style: const TextStyle(fontSize: 20.0))
                          ],
                        );
                      } else {
                        return const CarregandoPage();
                      }
                    }),
              ),
              const Divider(
                color: Colors.black,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                child: FutureBuilder(
                    future: getImagem2(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Column(
                          children: [
                            Image.network(
                                "https://upload.wikimedia.org/wikipedia/commons/c/c3/Google_Chrome_icon_and_wordmark_%282016%29.png"),
                            Text(snapshot.requireData, style: const TextStyle(fontSize: 20.0))
                          ],
                        );
                      } else {
                        return const CarregandoPage();
                      }
                    }),
              ),
              const Divider(
                color: Colors.black,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                child: FutureBuilder(
                    future: getImagem3(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Column(
                          children: [
                            Image.network(
                                "https://upload.wikimedia.org/wikipedia/commons/a/ab/Gmail2020.logo.png"),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(snapshot.requireData, style: const TextStyle(fontSize: 20.0))
                          ],
                        );
                      } else {
                        return const CarregandoPage();
                      }
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
