import 'package:flutter/material.dart';
import 'package:projeto_flutter/pages/historia_flutter.dart';
import 'package:projeto_flutter/pages/segunda_tela.dart';
import 'package:projeto_flutter/shared/widgets/custom_drawer_senai.dart';

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
        drawer: const CustomDrawerSenai(),
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
