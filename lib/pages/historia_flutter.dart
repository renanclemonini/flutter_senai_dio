import 'package:flutter/material.dart';

class HistoriaFlutter extends StatefulWidget {
  const HistoriaFlutter({super.key});

  @override
  State<HistoriaFlutter> createState() => _HistoriaFlutterState();
}

class _HistoriaFlutterState extends State<HistoriaFlutter> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text("História do Flutter"),
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: Center(
              child: SizedBox(
                width: 900,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 30),
                    const Text("História do Flutter",
                        style: TextStyle(
                            fontSize: 30, decoration: TextDecoration.underline),
                        textAlign: TextAlign.center),
                    const SizedBox(height: 30),
                    const SizedBox(
                      child: Text(
                          "Flutter é uma ferramenta do Google criada para desenvolver aplicativos compilados nativamente em qualquer plataforma, utilizando uma mesma base de código.",
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.justify),
                    ),
                    const SizedBox(height: 15),
                    const SizedBox(
                      child: Text(
                          "O framework em questão é escrito na linguagem de programação Dart, que também foi criada pelo Google. Com este framework, o código é compilado para a linguagem base do dispositivo. Por isso, o desempenho é muito melhor.",
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.justify),
                    ),
                    const SizedBox(height: 15),
                    const SizedBox(
                      child: Text(
                        "Por ser multiplataforma, entende-se que o Flutter pode ser usado para desenvolver aplicações em qualquer sistema operacional, como Windows, Linux e MacOS, além de aplicações nativas para Android e iOS.",
                        style: TextStyle(fontSize: 16),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    const SizedBox(height: 15),
                    const SizedBox(
                      child: Text(
                        "O Flutter foi criado pela equipe do Google em meados de 2015, mas foi lançado no mercado em 2018 como uma estrutura de código aberto. Apesar de ser relativamente novo, ele é bastante usado e tem uma comunidade muito engajada.",
                        style: TextStyle(fontSize: 16),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    const SizedBox(height: 15),
                    const SizedBox(
                      child: Text(
                        "Ele foi batizado, inicialmente, de Sky e era executado apenas no ambiente Android. Atualmente, esta tecnologia é uma das mais utilizadas para o desenvolvimento de aplicações mobile.",
                        style: TextStyle(fontSize: 16),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    const SizedBox(height: 15),
                    const SizedBox(
                      child: Text(
                        "Os desenvolvedores estão sempre acompanhando a sua evolução. A versão mais recente é o Flutter 3.10. Ela traz mais segurança e melhorias para as aplicações web e em dispositivos móveis.  ",
                        style: TextStyle(fontSize: 16),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Column(
                      children: [
                        const Divider(height: 30),
                        Row(
                          children: [
                            Expanded(child: Container()),
                            Expanded(
                              flex: 8,
                              child: SizedBox(
                                child: Image.asset("assets/flutter.png"),
                              ),
                            ),
                            Expanded(child: Container()),
                          ],
                        ),
                        const SizedBox(height: 30),
                        const Text(
                          "Logo Flutter",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        const SizedBox(height: 30)
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
