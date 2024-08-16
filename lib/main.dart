import 'package:flutter/material.dart';
import 'package:nail_app/components/custom_app_bar.dart';
import 'package:nail_app/pages/login.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nail_app/pages/servicos.dart';
import 'package:nail_app/template/components/custom_navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool logado = false;

  void logar() {
    setState(() {
      logado = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.ralewayTextTheme(),
      ),
      home: Scaffold(
        appBar: logado ? const CustomAppBar(titulo: "Serviços") : null,
        body: logado ? const Servicos() : Login(onLogin: logar),
        bottomNavigationBar: logado ? const CustomNavigationBar() : null,
      ),
    );
  }
}
