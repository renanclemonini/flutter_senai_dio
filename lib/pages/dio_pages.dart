import 'package:flutter/material.dart';
import 'package:projeto_flutter/shared/widgets/custom_drawer_dio.dart';

class DioPage extends StatefulWidget {
  const DioPage({super.key});

  @override
  State<DioPage> createState() => _DioPageState();
}

class _DioPageState extends State<DioPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Projetos pela Dio"),
        ),
        drawer: const CustomDrawerDio(),
        body: Center(
          child: Row(
            children: [
              Expanded(child: Container()),
              const Expanded(
                flex: 4,
                child: Text(
                  textAlign: TextAlign.center,
                  "Para navegas nas páginas por favor acesse o drawer lateral!",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
              Expanded(child: Container()),
            ],
          ),
        ),
      ),
    );
  }
}
