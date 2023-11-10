import 'package:flutter/material.dart';
import 'package:projeto_flutter/pages/dados_cadastrais.dart';
import 'package:projeto_flutter/pages/future_builder.dart';
import 'package:projeto_flutter/pages/historia_flutter.dart';
import 'package:projeto_flutter/pages/login_page.dart';
import 'package:projeto_flutter/pages/page_view.dart';
import 'package:projeto_flutter/pages/segunda_tela.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var likes = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Página Principal"),
        ),
        drawer: Drawer(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(child: Container()),
                    Expanded(flex: 3, child: Image.asset("assets/flutter.png")),
                    Expanded(child: Container()),
                  ],
                ),
                const Divider(
                  height: 30,
                  thickness: 1,
                  color: Colors.black,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const MainPage()));
                            },
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.blue),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)))),
                            child: const Text(
                              "Inicio",
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            )),
                      ),
                      const SizedBox(height: 15),
                      SizedBox(
                        width: double.infinity,
                        child: TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const HistoriaFlutter()));
                            },
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.blue),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)))),
                            child: const Text(
                              "História do Flutter",
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            )),
                      ),
                      const SizedBox(height: 15),
                      SizedBox(
                        width: double.infinity,
                        child: TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const DadosCadastrais()));
                            },
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.blue),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)))),
                            child: const Text(
                              "Dados Cadastrais",
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            )),
                      ),
                      const SizedBox(height: 15),
                      SizedBox(
                        width: double.infinity,
                        child: TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const FutureBuilderPage()));
                            },
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.blue),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)))),
                            child: const Text(
                              "Future Builder",
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            )),
                      ),
                      const SizedBox(height: 15),
                      SizedBox(
                        width: double.infinity,
                        child: TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SegundaTela()));
                            },
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.blue),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)))),
                            child: const Text(
                              "Animações",
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            )),
                      ),
                      const SizedBox(height: 15),
                      SizedBox(
                        width: double.infinity,
                        child: TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const PageViewPage()));
                            },
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.blue),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)))),
                            child: const Text(
                              "Page View",
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            )),
                      ),
                      const SizedBox(height: 15),
                      SizedBox(
                        width: double.infinity,
                        child: TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const LoginPage()));
                            },
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.blue),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)))),
                            child: const Text(
                              "Sair",
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                const SizedBox(height: 30),
                SizedBox(
                  width: 300,
                  child: Column(
                    children: [
                      Card(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const ListTile(
                              leading: Icon(Icons.album),
                              title: Text("História do Flutter"),
                              subtitle: Text(
                                  "Uma breve história do Framework Flutter"),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                TextButton(
                                  child: const Tooltip(
                                      message: "Ver História do Flutter",
                                      child: Text('Clique Aqui')),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const HistoriaFlutter()));
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Divider(),
                      Card(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            const ListTile(
                              leading: Icon(Icons.album),
                              title: Text("Animações"),
                              subtitle: Text("Página com animações"),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                TextButton(
                                  child: const Tooltip(
                                      message: "Ver Animações",
                                      child: Text('Clique Aqui')),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const SegundaTela()));
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Quantidade de Likes: $likes"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {
                              setState(() {
                                likes += 1;
                              });
                            },
                            child: const Tooltip(
                              message: "Clique para deixar um like",
                              child: Icon(Icons.favorite,
                                  size: 84.0, color: Colors.red),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {
                              setState(() {
                                likes = 0;
                              });
                            },
                            child: const Tooltip(
                              message: "Clique para zerar os likes",
                              child: Icon(Icons.close,
                                  size: 84.0, color: Colors.black),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
