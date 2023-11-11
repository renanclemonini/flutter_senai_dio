import 'package:flutter/material.dart';
import 'package:projeto_flutter/pages/login_page.dart';

class AlertDialogSair extends StatelessWidget {
  const AlertDialogSair({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      // title: const Text(
      //   "Deseja Realmente Sair?",
      //   textAlign: TextAlign.center,
      // ),
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
      content: const Wrap(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // const SizedBox(
              //   height: 15,
              // ),
              Text(
                "Deseja realmente sair?",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ],
      ),
      actions: [
        TextButton(
          style: ButtonStyle(
              padding: MaterialStateProperty.all(
                const EdgeInsets.all(10),
              ),
              backgroundColor:
                  MaterialStateColor.resolveWith((states) => Colors.blue)),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginPage(),
              ),
            );
          },
          child: const Text(
            "Sim",
            style: TextStyle(color: Colors.white),
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Não"),
        ),
      ],
    );
  }
}
