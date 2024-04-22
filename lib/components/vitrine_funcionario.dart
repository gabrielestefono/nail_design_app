import 'package:flutter/material.dart';

class VitrineFuncionario extends StatelessWidget {
  const VitrineFuncionario({super.key});

  @override
  Widget build(BuildContext context) {
    List<bool> arrayEstrelas = List<bool>.generate(5, (i) => i < 4);
    return IntrinsicWidth(
      child: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
            child: Image.network(
              'assets/images/funcionario.png',
              width: 150,
              height: 150,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: Column(
              children: [
                const Text(
                  "Daniela Cunha",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontVariations: [
                      FontVariation('wght', 600),
                    ],
                  ),
                ),
                const Text(
                  "20 Anos de Experiência",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontVariations: [
                      FontVariation('wght', 400),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5),
                  child: Row(
                    children: arrayEstrelas.map((estrela) {
                      return estrela ? Image.network('assets/icons/star.png') : Image.network('assets/icons/star_empty.png');
                    }).toList(),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
