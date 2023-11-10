import 'package:flutter/material.dart';

class SegundaTela extends StatefulWidget {
  const SegundaTela({super.key});

  @override
  State<SegundaTela> createState() => _SegundaTelaState();
}

class _SegundaTelaState extends State<SegundaTela> {
  bool tapped = false;
  double size = 150;
  double fontSize = 20;
  final duration = const Duration(milliseconds: 300);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("Animações"),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              // Center(
              //   child: textbu,
              // ),
              Center(
                child: AnimatedPadding(
                  duration: duration,
                  curve: Curves.easeInOut,
                  padding: EdgeInsets.all(tapped ? 20 : 120),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () => setState(() => tapped = !tapped),
                        child: Text(tapped ? "Em Bloco" : "Centralizado")),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                child: GestureDetector(
                  // onTap: () => setState(() {
                  //   tapped = !tapped;
                  // }),
                  child: Column(
                    children: [
                      SizedBox(
                        child: AnimatedContainer(
                          duration: duration,
                          width: tapped ? size * 2 : size,
                          height: tapped ? size * 2 : size,
                          decoration: BoxDecoration(
                            color: tapped ? Colors.black : Colors.grey,
                            borderRadius: tapped
                                ? const BorderRadius.all(Radius.circular(60))
                                : null,
                          ),
                          child: Center(
                            child: AnimatedDefaultTextStyle(
                                duration: duration,
                                style: TextStyle(
                                  fontSize: tapped ? fontSize * 3 : fontSize,
                                  color: tapped ? Colors.white : Colors.black,
                                ),
                                child: AnimatedCrossFade(
                                    firstChild: const Text("Pequeno"),
                                    secondChild: const Text("Grande"),
                                    crossFadeState: !tapped
                                        ? CrossFadeState.showFirst
                                        : CrossFadeState.showSecond,
                                    duration: duration)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
