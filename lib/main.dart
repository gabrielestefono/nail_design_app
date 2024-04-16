import 'package:flutter/material.dart';
import 'package:nail_app/components/custom_app_bar.dart';
import 'package:nail_app/pages/categoria.dart';
import 'package:nail_app/pages/login.dart';
import 'package:google_fonts/google_fonts.dart';

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
      theme: ThemeData(
        textTheme: GoogleFonts.ralewayTextTheme(),
      ),
      home: Scaffold(
        appBar: titulo != null ? CustomAppBar(titulo: titulo!) : null,
        body: logado ? const Login() : const Categoria(),
      ),
    );
  }
}
