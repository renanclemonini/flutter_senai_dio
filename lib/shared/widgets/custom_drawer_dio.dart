import 'package:flutter/material.dart';
import 'package:projeto_flutter/pages/dados_cadastrais.dart';
import 'package:projeto_flutter/pages/main_page.dart';
import 'package:projeto_flutter/pages/page_view.dart';
import 'package:projeto_flutter/shared/widgets/alert_dialog_sair.dart';

class CustomDrawerDio extends StatelessWidget {
  const CustomDrawerDio({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    context: context,
                    builder: (BuildContext bc) {
                      return Wrap(
                        children: [
                          ListTile(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            title: const Text("Câmera"),
                            leading: const Icon(Icons.camera_alt),
                            iconColor: Colors.black,
                          ),
                          const ListTile(
                            title: Text("Galeria"),
                            leading: Icon(Icons.screen_share),
                            iconColor: Colors.black,
                          ),
                        ],
                      );
                    });
              },
              child: UserAccountsDrawerHeader(
                  decoration: const BoxDecoration(color: Colors.blue),
                  currentAccountPicture: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: Image.network(
                          "https://lp.dio.me/wp-content/uploads/2023/03/LOGO-DIO-COLOR.png")),
                  accountName: const Text("Renan Clemonini",
                      style: TextStyle(color: Colors.white)),
                  accountEmail: const Text(
                    "rclemon93",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10)),
                            padding: const EdgeInsets.all(10.0),
                            child: const Row(
                              children: [
                                SizedBox(width: 10),
                                Icon(
                                  Icons.home,
                                  color: Colors.white,
                                ),
                                SizedBox(width: 15),
                                Text(
                                  "Tela Inicial",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                          onTap: () {
                            Navigator.pop(context);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MainPage(),
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 15),
                        InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10)),
                            padding: const EdgeInsets.all(10.0),
                            child: const Row(
                              children: [
                                SizedBox(width: 10),
                                Icon(
                                  Icons.person,
                                  color: Colors.white,
                                ),
                                SizedBox(width: 15),
                                Text(
                                  "Dados Cadastrais",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                          onTap: () {
                            Navigator.pop(context);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const DadosCadastrais(),
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 15),
                        InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10)),
                            padding: const EdgeInsets.all(10.0),
                            child: const Row(
                              children: [
                                SizedBox(width: 10),
                                Icon(
                                  Icons.pages_outlined,
                                  color: Colors.white,
                                ),
                                SizedBox(width: 15),
                                Text(
                                  "Page View",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                          onTap: () {
                            Navigator.pop(context);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const PageViewPage()));
                          },
                        ),
                        const SizedBox(height: 15),
                        InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10)),
                            padding: const EdgeInsets.all(10.0),
                            child: const Row(
                              children: [
                                SizedBox(width: 10),
                                Icon(
                                  Icons.info_outline,
                                  color: Colors.white,
                                ),
                                SizedBox(width: 15),
                                Text(
                                  "Termos de Uso",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                          onTap: () {
                            showModalBottomSheet(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                context: context,
                                builder: (BuildContext bc) {
                                  return Center(
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 10),
                                      child: const Column(
                                        children: [
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "Termos de Uso",
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "O incentivo ao avanço tecnológico, assim como a hegemonia do ambiente político prepara-nos para enfrentar situações atípicas decorrentes das diversas correntes de pensamento. As experiências acumuladas demonstram que a percepção das dificuldades facilita a criação de todos os recursos funcionais envolvidos. Por conseguinte, a consulta aos diversos militantes oferece uma interessante oportunidade para verificação das formas de ação. No entanto, não podemos esquecer que a mobilidade dos capitais internacionais acarreta um processo de reformulação e modernização dos modos de operação convencionais.",
                                            style: TextStyle(fontSize: 16),
                                            textAlign: TextAlign.justify,
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                });
                          },
                        ),
                        const SizedBox(height: 15),
                        InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10)),
                            padding: const EdgeInsets.all(10.0),
                            child: const Row(
                              children: [
                                SizedBox(width: 10),
                                Icon(
                                  Icons.settings,
                                  color: Colors.white,
                                ),
                                SizedBox(width: 15),
                                Text(
                                  "Configurações",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                          onTap: () {},
                        ),
                        const SizedBox(height: 15),
                        InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10)),
                            padding: const EdgeInsets.all(10.0),
                            child: const Row(
                              children: [
                                SizedBox(width: 10),
                                Icon(
                                  Icons.exit_to_app,
                                  color: Colors.white,
                                ),
                                SizedBox(width: 15),
                                Text(
                                  "Sair",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext bc) {
                                return const AlertDialogSair();
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
