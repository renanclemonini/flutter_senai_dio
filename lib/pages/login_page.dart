import 'package:flutter/material.dart';
import 'package:projeto_flutter/pages/main_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var emailController = TextEditingController(text: "rclemon93");
  var senhaController = TextEditingController(text: "123");
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints:
                BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
            child: Column(
              children: [
                const SizedBox(
                  height: 70,
                ),
                Row(
                  children: [
                    Expanded(child: Container()),
                    Expanded(
                        flex: 8,
                        child: Image.asset(
                          "assets/logo-senai.png",
                          // width: 300,
                          // height: 112,
                        )),
                    Expanded(child: Container())
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Column(
                  children: <Widget>[
                    SizedBox(
                      width: 400,
                      child: Text("Seja Bem Vindo!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: SizedBox(
                        child: SizedBox(
                          width: 400,
                          child: Text(
                            "Este trabalho foi feito por Renan Clemonini como nota complementar na disciplina 'Desenvolvimento de Sistemas para Dispositivos Móveis'.",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: 400,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  height: 30,
                  alignment: Alignment.center,
                  child: TextField(
                    controller: emailController,
                    onChanged: (value) {},
                    style: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w500),
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(top: 0),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(0, 60, 164, 1),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Color.fromRGBO(0, 60, 164, 1),
                      )),
                      hintText: "Login",
                      hintStyle: TextStyle(color: Colors.black),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Color.fromRGBO(0, 60, 164, 1),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: 400,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  height: 30,
                  alignment: Alignment.center,
                  child: TextField(
                    obscureText: isObscureText,
                    controller: senhaController,
                    onChanged: (value) {},
                    style: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w500),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(top: 0),
                      enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Color.fromRGBO(0, 60, 164, 1),
                      )),
                      hintText: "Senha",
                      hintStyle: const TextStyle(color: Colors.black),
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Color.fromRGBO(0, 60, 164, 1),
                      ),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            isObscureText = !isObscureText;
                          });
                        },
                        child: Icon(
                          isObscureText
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: const Color.fromRGBO(0, 60, 164, 1),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  width: 400,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {
                        // Navigator.pushReplacement(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => const MainPage()));
                        if ((emailController.text.trim() == "rclemon93") &&
                            (senhaController.text.trim() == "123")) {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MainPage()));
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text(
                                      "Erro ao efetuar login. Dados inválidos!",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold))));
                        }
                      },
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromRGBO(0, 60, 164, 1)),
                      ),
                      child: const Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
                Expanded(child: Container()),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
