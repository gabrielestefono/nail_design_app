import 'package:flutter/material.dart';
import 'package:nail_app/components/classificacao_funcionario.dart';
import 'package:nail_app/template/components/custom_scroll.dart';
import 'package:nail_app/template/components/subtitulo.dart';

class Funcionarios extends StatelessWidget {
  const Funcionarios({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScroll(
      secondary: true,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 120),
          child: const SubTitulo(texto: "Manicures Disponíveis:"),
        ),
        const Column(
          children: [
            ClassificacaoFuncionario(estrelas: 3),
            ClassificacaoFuncionario(estrelas: 2),
            ClassificacaoFuncionario(estrelas: 5),
            ClassificacaoFuncionario(estrelas: 4),
            ClassificacaoFuncionario(estrelas: 3),
            ClassificacaoFuncionario(estrelas: 4),
          ],
        )
      ],
    );
  }
}
