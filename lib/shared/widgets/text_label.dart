import 'package:flutter/material.dart';

class TextLabel extends StatelessWidget {
  final String texto;
  const TextLabel({super.key, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Text(texto,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
    );
  }
}
