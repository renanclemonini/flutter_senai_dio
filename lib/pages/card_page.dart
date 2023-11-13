import 'package:flutter/material.dart';
import 'package:projeto_flutter/model/card_detail.dart';
import 'package:projeto_flutter/pages/card_detail_page.dart';

class CardPage extends StatefulWidget {
  const CardPage({super.key});

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {

  var cardDetail = CardDetail(
    1,
    "Card do Renan", 
    "https://lp.dio.me/wp-content/uploads/2023/03/LOGO-DIO-COLOR.png", 
    "Lorem Ipsum é simplesmente um texto fictício da indústria de impressão e composição tipográfica. Lorem Ipsum tem sido o texto fictício padrão da indústria desde 1500, quando um impressor desconhecido pegou uma prova de tipos e a misturou para fazer um livro de espécimes de tipos. Ela sobreviveu não apenas a cinco séculos, mas também ao salto para a composição tipográfica eletrônica, permanecendo essencialmente inalterada. Foi popularizado na década de 1960 com o lançamento de folhas Letraset contendo passagens de Lorem Ipsum e, mais recentemente, com software de editoração eletrônica como Aldus PageMaker, incluindo versões de Lorem Ipsum."
  );


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          width: double.infinity,
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => CardDetailPage(
                cardDetail: cardDetail,
              ),));
            },
            child: Hero(
              tag: cardDetail.id,
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
                            cardDetail.url, 
                            height: 30,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            cardDetail.title, 
                            style: const TextStyle(
                              fontWeight: FontWeight.bold, 
                              fontSize: 20),
                            ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Text(
                        cardDetail.text,
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
          ),
        ),
      ],
    );
  }
}
