import 'package:flutter/material.dart';
import 'package:nail_app/template/components/botao_categoria.dart';
import 'package:nail_app/template/components/botao_grande.dart';
import 'package:nail_app/template/components/custom_scroll.dart';
import 'package:nail_app/template/components/subtitulo.dart';

class Servicos extends StatelessWidget {
  const Servicos({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScroll(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 60, left: 20),
          child: const SubTitulo(texto: "Bem vinda, Maria!"),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10, left: 20),
          child: const SubTitulo(texto: "Nossos Serviços"),
        ),
        Container(
          margin: const EdgeInsets.only(top: 32),
          alignment: Alignment.center,
          child: const BotaoCategoria(imagem: "assets/images/btn_g.png"),
        ),
        Container(
          margin: const EdgeInsets.only(top: 24),
          alignment: Alignment.center,
          child: const BotaoGrande(texto: "Manicure"),
        ),
        Container(
          margin: const EdgeInsets.only(top: 32),
          alignment: Alignment.center,
          child: const BotaoCategoria(imagem: "assets/images/btn_g.png"),
        ),
        Container(
          margin: const EdgeInsets.only(top: 24, bottom: 100),
          alignment: Alignment.center,
          child: const BotaoGrande(texto: "Pedicure"),
        ),
      ],
    );
  }
}
