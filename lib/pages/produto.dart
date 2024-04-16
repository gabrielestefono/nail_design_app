import 'package:flutter/material.dart';
import 'package:nail_app/template/components/botao_produto.dart';
import 'package:nail_app/template/components/custom_scroll.dart';
import 'package:nail_app/template/components/subtitulo.dart';
import 'package:nail_app/template/components/titulo.dart';

class Produto extends StatelessWidget {
  const Produto({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScroll(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 120),
          child: const Titulo(texto: "Acrílicas"),
        ),
        Container(
          margin: const EdgeInsets.only(top: 18),
          child: const SubTitulo(texto: "Nossos modelos:"),
        ),
        Container(
          margin: const EdgeInsets.only(top: 40),
          child: const Padding(
            padding: EdgeInsets.all(10),
            child: Wrap(
              alignment: WrapAlignment.center,
              spacing: 20,
              runSpacing: 20,
              children: [
                BotaoProduto(imagem: 'assets/images/btn_p.png'),
                BotaoProduto(imagem: 'assets/images/btn_p.png'),
                BotaoProduto(imagem: 'assets/images/btn_p.png'),
                BotaoProduto(imagem: 'assets/images/btn_p.png'),
                BotaoProduto(imagem: 'assets/images/btn_p.png'),
                BotaoProduto(imagem: 'assets/images/btn_p.png'),
                BotaoProduto(imagem: 'assets/images/btn_p.png'),
                BotaoProduto(imagem: 'assets/images/btn_p.png'),
                BotaoProduto(imagem: 'assets/images/btn_p.png'),
                BotaoProduto(imagem: 'assets/images/btn_p.png'),
                BotaoProduto(imagem: 'assets/images/btn_p.png'),
                BotaoProduto(imagem: 'assets/images/btn_p.png'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
