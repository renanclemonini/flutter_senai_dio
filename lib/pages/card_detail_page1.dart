import 'package:flutter/material.dart';
import 'package:projeto_flutter/model/card_detail.dart';

class CardDetailPage1 extends StatelessWidget {
  final CardDetail cardDetail1;
  
  const CardDetailPage1({super.key, required this.cardDetail1});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: cardDetail1.id,
      child: SafeArea(
        child: Scaffold(
          // appBar: AppBar(
          //   title: const Text("Hero"),
          // ),
          body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(onPressed: () {
                    Navigator.pop(context);
                  }, 
                    icon: const Icon(Icons.close) 
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        cardDetail1.url, 
                        height: 80,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        cardDetail1.title, 
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold, 
                          fontSize: 30),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Expanded(
                    child: Text(
                      cardDetail1.text,
                      style: const TextStyle(fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
        ),
      ),
    );
  }
}