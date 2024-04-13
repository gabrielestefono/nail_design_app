import 'package:flutter/material.dart';
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
        Container(
          // color: Colors.black.withOpacity(0.2), TODO: Remover isso quando pular pra próxima Página
          child: Column(
            children: [
              const NomeApp(texto: "Open Nails"),
              const SubTitulo(texto: "Vamos à sua casa"),
              Form(
                child: Column(
                  children: [
                    const InputPersonalizado(
                      texto: "Email",
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: const InputPersonalizado(
                        texto: "Senha",
                        senha: true,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
