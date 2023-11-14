import 'package:flutter/material.dart';
import 'package:projeto_flutter/pages/card_page.dart';
import 'package:projeto_flutter/pages/image_assets.dart';
import 'package:projeto_flutter/pages/list_view_h.dart';
import 'package:projeto_flutter/pages/list_view_horizontal.dart';

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
        title: const Text("Main Page"),
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
              children: const [
                CardPage(), 
                ImageAssets(), 
                ListViewHPage(),
                ListViewHorizontal(),  
              ],
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
                BottomNavigationBarItem(label: "Card", icon: Icon(Icons.home)),
                BottomNavigationBarItem(label: "Images", icon: Icon(Icons.add)),
                BottomNavigationBarItem(label: "List View", icon: Icon(Icons.person)),
                BottomNavigationBarItem(label: "List View", icon: Icon(Icons.person_add))
              ])
        ],
      ),
    );
  }
}
