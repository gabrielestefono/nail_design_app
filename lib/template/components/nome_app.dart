import 'package:flutter/material.dart';

class NomeApp extends StatelessWidget {
  final String texto;
  const NomeApp({super.key, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 55,
        fontVariations: [
          FontVariation('wght', 500),
        ],
      ),
    );
  }
}
