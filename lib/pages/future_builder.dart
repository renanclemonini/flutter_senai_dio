import 'package:flutter/material.dart';

class FutureBuilderPage extends StatefulWidget {
  const FutureBuilderPage({super.key});

  @override
  State<FutureBuilderPage> createState() => _FutureBuilderPageState();
}

class _FutureBuilderPageState extends State<FutureBuilderPage> {
  Future<String> getImagem1() async =>
      await Future.delayed(const Duration(seconds: 7), () {
        return "Olá mundo";
      });

  Future<String> getImagem2() async =>
      await Future.delayed(const Duration(seconds: 3), () {
        return 'Dados recebidos...';
      });

  Future<String> getImagem3() async =>
      await Future.delayed(const Duration(seconds: 12), () {
        return 'Dados recebidos...';
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
                            const Center(
                              child: Text(
                                "Imagem 1",
                                style: TextStyle(fontSize: 20.0),
                              ),
                            ),
                          ],
                        );
                      } else {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
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
                            const Center(
                              child: Text(
                                "Imagem 2",
                                style: TextStyle(fontSize: 20.0),
                              ),
                            ),
                          ],
                        );
                      } else {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
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
                            const Center(
                              child: Text(
                                "Imagem 3",
                                style: TextStyle(fontSize: 20.0),
                              ),
                            ),
                          ],
                        );
                      } else {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
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
