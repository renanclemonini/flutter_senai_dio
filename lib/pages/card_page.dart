import 'package:flutter/material.dart';
import 'package:projeto_flutter/model/card_detail.dart';
import 'package:projeto_flutter/pages/card_detail_page.dart';
import 'package:projeto_flutter/pages/carregando_page.dart';
import 'package:projeto_flutter/repositories/card_detail_repository.dart';

class CardPage extends StatefulWidget {
  const CardPage({super.key});

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {

  CardDetail? cardDetail;
  var cardDetailRepository = CardDetailRepository();

  @override
  void initState() {
    super.initState();
    carregarDados();
  }

  void carregarDados() async {
    cardDetail = await cardDetailRepository.get();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                width: double.infinity,
                child: Column(
                  children: [
                    cardDetail == null ? const CarregandoPage() : InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => CardDetailPage(
                          cardDetail: cardDetail!,
                        ),));
                      },
                      child: Column(
                        children: [
                          Hero(
                            tag: cardDetail!.id,
                            child: Card(
                              elevation: 8,
                              shadowColor: Colors.grey,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Image.network(
                                          cardDetail!.url, 
                                          height: 30,
                                        ),
                                        const SizedBox(width: 10),
                                        Text(
                                          cardDetail!.title, 
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold, 
                                            fontSize: 20),
                                          ),
                                      ],
                                    ),
                                    const SizedBox(height: 20),
                                    Text(
                                      cardDetail!.text,
                                      style: const TextStyle(fontSize: 16),
                                      textAlign: TextAlign.justify,
                                    ),
                                    Container(
                                      width: double.infinity,
                                      alignment: Alignment.centerRight,
                                      child: TextButton(onPressed: () {
                                    
                                      }, child: const Text(
                                        "Ler mais",
                                        style: TextStyle(decoration: TextDecoration.underline, decorationThickness: 2),)),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
