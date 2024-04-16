import 'package:flutter/material.dart';

class BotaoCategoria extends StatelessWidget {
  final String imagem;
  const BotaoCategoria({super.key, required this.imagem});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 225,
      height: 225,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: NetworkImage(imagem),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
