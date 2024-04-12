import 'package:flutter/material.dart';
import 'package:nail_app/components/custom_app_bar.dart';
import 'package:nail_app/pages/login.dart';

void main() {
  runApp(const MyApp(
    logado: false,
  ));
}

class MyApp extends StatelessWidget {
  final bool logado;
  final String? titulo;
  const MyApp({super.key, required this.logado, this.titulo});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: titulo != null ? CustomAppBar(titulo: titulo!) : null,
        body: logado ? const Login() : const Login(),
      ),
    );
  }
}
