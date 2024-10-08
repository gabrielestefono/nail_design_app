import 'package:flutter/material.dart';
import 'package:nail_app/pages/produto.dart';
import 'package:nail_app/template/components/botao_grande.dart';
import 'package:nail_app/template/components/custom_scroll.dart';
import 'package:nail_app/template/components/titulo.dart';

class Categoria extends StatelessWidget {
  const Categoria({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScroll(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 200),
          alignment: Alignment.center,
          child: const Titulo(texto: "Manicure"),
        ),
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(top: 88),
          child: BotaoGrande(
            texto: "Acrílicas",
            callback: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Produto(),
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width * 0.8,
          margin: const EdgeInsets.only(top: 50),
          child: BotaoGrande(
            texto: "Semi Permanente",
            callback: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Produto(),
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width * 0.8,
          margin: const EdgeInsets.only(top: 50),
          child: BotaoGrande(
            texto: "Pintado Normal",
            callback: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Produto(),
              ),
            ),
          ),
        )
      ],
    );
  }
}
