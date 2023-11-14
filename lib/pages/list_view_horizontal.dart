import 'package:flutter/material.dart';
import 'package:projeto_flutter/shared/app_images.dart';

class ListViewHorizontalPage extends StatefulWidget {
  const ListViewHorizontalPage({super.key});

  @override
  State<ListViewHorizontalPage> createState() => _ListViewHorizontalPageState();
}

class _ListViewHorizontalPageState extends State<ListViewHorizontalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
      children: [
        const Column(
          children: [
            SizedBox(height: 50,),
            Text("LIST VIEW HORIZONTAL", style: TextStyle(fontSize: 50), textAlign: TextAlign.center,),
            SizedBox(height: 50,),
          ],
        ),
        Expanded(
          flex: 3,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              const SizedBox(width: 10,),
              Card(
                elevation: 8,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset(AppImages.flutterLogo),
                )
              ),
              Card(
                elevation: 8,
                child: Image.asset(AppImages.senaiLogo)
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Container()
        )
      ],
    ),
    );
  }
}