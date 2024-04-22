import 'package:flutter/material.dart';
import 'package:nail_app/components/agenda.dart';
import 'package:nail_app/components/recomendacao.dart';
import 'package:nail_app/components/vitrine.dart';
import 'package:nail_app/components/vitrine_funcionario.dart';
import 'package:nail_app/template/components/custom_scroll.dart';
import 'package:nail_app/template/components/subtitulo.dart';

class Funcionario extends StatelessWidget {
  const Funcionario({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScroll(
      secondary: true,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 80),
          child: const SubTitulo(texto: "Perfil de Daniela"),
        ),
        Container(
          margin: const EdgeInsets.only(top: 45),
          alignment: Alignment.center,
          child: const VitrineFuncionario(),
        ),
        Container(
          margin: const EdgeInsets.only(top: 30),
          child: const SubTitulo(texto: "Desenhos"),
        ),
        Container(
          margin: const EdgeInsets.only(top: 35),
          child: const Vitrine(),
        ),
        Container(
          margin: const EdgeInsets.only(top: 40),
          child: const SubTitulo(texto: "Recomendações"),
        ),
        Container(
          margin: const EdgeInsets.only(top: 14),
          child: const Recomendacao(),
        ),
        const Agenda(),
      ],
    );
  }
}
