import 'package:flutter/material.dart';

class Titulo extends StatelessWidget {
  final String texto;
  const Titulo({super.key, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 40,
        fontVariations: [
          FontVariation('wght', 600),
        ],
      ),
    );
  }
}
