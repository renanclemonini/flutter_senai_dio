import 'package:flutter/material.dart';
import 'package:projeto_flutter/pages/pagina_1.dart';
import 'package:projeto_flutter/pages/pagina_2.dart';
import 'package:projeto_flutter/pages/pagina_3.dart';

class PageViewPage extends StatefulWidget {
  const PageViewPage({super.key});

  @override
  State<PageViewPage> createState() => _PageViewPageState();
}

class _PageViewPageState extends State<PageViewPage> {
  PageController controller = PageController(initialPage: 0);
  int posPagina = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page View"),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: controller,
              onPageChanged: (value) {
                setState(() {
                  posPagina = value;
                });
              },
              children: const [Pagina1(), Pagina2(), Pagina3()],
            ),
          ),
          BottomNavigationBar(
              onTap: (value) {
                setState(() {
                  controller.jumpToPage(value);
                });
              },
              currentIndex: posPagina,
              items: const [
                BottomNavigationBarItem(label: "Pg 1", icon: Icon(Icons.home)),
                BottomNavigationBarItem(label: "Pg 2", icon: Icon(Icons.add)),
                BottomNavigationBarItem(label: "Pg 3", icon: Icon(Icons.person))
              ])
        ],
      ),
    );
  }
}
