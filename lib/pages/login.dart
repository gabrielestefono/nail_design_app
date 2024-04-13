import 'package:flutter/material.dart';
import 'package:nail_app/template/components/botao_pequeno.dart';
import 'package:nail_app/template/components/input_personalizado.dart';
import 'package:nail_app/template/components/nome_app.dart';
import 'package:nail_app/template/components/subtitulo.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.12),
              child: const NomeApp(texto: "Open Nails"),
            ),
            const SubTitulo(texto: "Vamos à sua casa"),
            Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.38),
              child: Form(
                child: Column(
                  children: [
                    const InputPersonalizado(
                      texto: "Email",
                    ),
                    Container(
                      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.03),
                      child: const InputPersonalizado(
                        texto: "Senha",
                        senha: true,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.06),
                      alignment: Alignment.centerRight,
                      child: const BotaoPequeno(texto: "Login"),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
