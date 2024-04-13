import 'package:flutter/material.dart';

class SubTitulo extends StatelessWidget {
  final String texto;
  const SubTitulo({super.key, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      style: const TextStyle(
        color: Colors.white,
        fontFamily: 'Raleway',
        fontSize: 25,
        fontVariations: [
          FontVariation('wght', 600),
        ],
      ),
    );
  }
}
