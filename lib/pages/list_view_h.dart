import 'package:flutter/material.dart';
import 'package:projeto_flutter/shared/app_images.dart';

class ListViewHPage extends StatefulWidget {
  const ListViewHPage({super.key});

  @override
  State<ListViewHPage> createState() => _ListViewHPageState();
}

class _ListViewHPageState extends State<ListViewHPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: 50,),
        const Text("LIST VIEW VERTICAL", style: TextStyle(fontSize: 50), textAlign: TextAlign.center,),
        const SizedBox(height: 50,),
        ListTile(
          leading: Image.network("https://media.licdn.com/dms/image/D4D03AQEsOd6pb8CL1w/profile-displayphoto-shrink_400_400/0/1696243281187?e=1701907200&v=beta&t=F74aMGGiIjQnyomrjzmws-QHMVbRyFNb0uRV4xVS-jw"),
          title: Text("Renan Clemonini"),
          subtitle: Text("rclemon93@gmail.com\n71 99633-3313"),
          isThreeLine: true,
          trailing: PopupMenuButton<String>(
            onSelected: (menu) {
              print(menu);
            },
            itemBuilder: (BuildContext bc) {
              return <PopupMenuEntry<String>> [
                const PopupMenuItem(
                  value: "opcao1",
                  child: Text("Opção 1")
                ),
                const PopupMenuItem(
                  value: "opcao2",
                  child: Text("Opção 2")
                ),
                const PopupMenuItem(
                  value: "opcao3",
                  child: Text("Opção 3")
                ),
              ];
            },
          )
        ),
        Container(
          margin: const EdgeInsets.all(50),
          child: Image.asset(AppImages.flutterLogo),
        ),
        const SizedBox(height: 50,),
        Image.asset(AppImages.senaiLogo),
        const SizedBox(height: 50,),
        const Text("FIM", style: TextStyle(fontSize: 50), textAlign: TextAlign.center,),
        const SizedBox(height: 50,),
      ],
    );
  }
}
