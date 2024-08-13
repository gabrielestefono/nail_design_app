import 'package:flutter/material.dart';

class ClassificacaoFuncionario extends StatelessWidget {
  final int estrelas;
  const ClassificacaoFuncionario({super.key, required this.estrelas});

  @override
  Widget build(BuildContext context) {
    List<bool> arrayEstrelas = List<bool>.generate(5, (i) => i < estrelas);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            margin: const EdgeInsets.only(right: 10, top: 60),
            width: 100,
            height: 100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network('assets/images/funcionario.png'),
            )),
        Column(
          children: [
            const Text(
              "Fulana 1",
              style:
                  TextStyle(color: Colors.white, fontSize: 20, fontVariations: [
                FontVariation('wght', 500),
              ]),
            ),
            const Text(
              "2 Anos de Experiência",
              style:
                  TextStyle(color: Colors.white, fontSize: 14, fontVariations: [
                FontVariation('wght', 500),
              ]),
            ),
            Row(
              children: arrayEstrelas.map((estrela) {
                return estrela
                    ? Image.network('assets/icons/star.png')
                    : Image.network('assets/icons/star_empty.png');
              }).toList(),
            )
          ],
        ),
        Container(
          width: 80,
          height: 100,
          alignment: Alignment.bottomRight,
          child: SizedBox(
            width: 70,
            height: 30,
            child: ElevatedButton(
              style: ButtonStyle(
                padding: WidgetStateProperty.all(EdgeInsets.zero),
                shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0),
                    side: const BorderSide(color: Colors.transparent),
                  ),
                ),
                backgroundColor: WidgetStateProperty.all(Colors.transparent),
                shadowColor: WidgetStateProperty.all(Colors.transparent),
              ),
              onPressed: () => {},
              child: Row(
                children: [
                  Container(
                      width: 24,
                      height: 24,
                      margin: const EdgeInsets.only(right: 5),
                      child: ClipRRect(
                        child: Image.network('assets/icons/schedule.png'),
                      )),
                  const Text(
                    'Agendar',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 9,
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
