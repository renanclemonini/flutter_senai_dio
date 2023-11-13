import 'package:flutter/material.dart';
import 'package:projeto_flutter/pages/login_page.dart';

class AlertDialogSair extends StatelessWidget {
  const AlertDialogSair({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
      content: const Wrap(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // const SizedBox(
              //   height: 15,
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Deseja realmente sair?",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
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
          style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  ),
                  backgroundColor:
                      MaterialStateColor.resolveWith((states) => Colors.red),),
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Não",
                style: TextStyle(color: Colors.white)),
        ),
          ],
        ),
      ],
    );
  }
}
