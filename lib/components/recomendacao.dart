import 'package:flutter/material.dart';

class Recomendacao extends StatelessWidget {
  const Recomendacao({super.key});

  @override
  Widget build(BuildContext context) {
    List<bool> arrayEstrelas = List<bool>.generate(5, (i) => i < 4);
    return Column(
      children: [
        Row(
          children: arrayEstrelas.map((estrela) {
            return estrela ? Image.network('assets/icons/star.png') : Image.network('assets/icons/star_empty.png');
          }).toList(),
        ),
        Container(
          margin: const EdgeInsets.only(top: 14),
          child: const Text(
            "Recomiendo encarecidamente a Daniela  como manicurista a domicilio. Es extremadamente puntual, ",
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontVariations: [
                FontVariation('wght', 400),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
