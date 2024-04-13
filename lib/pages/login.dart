import 'package:flutter/material.dart';
import 'package:nail_app/template/components/subtitulo.dart';
import 'package:nail_app/template/components/titulo.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text("Open Nails"),
        Text("Vamos à sua casa"),
        Form(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  label: Text("Email"),
                ),
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  label: Text("Senha"),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
