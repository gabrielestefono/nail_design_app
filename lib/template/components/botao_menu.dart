import 'package:flutter/material.dart';

class BotaoMenu extends StatelessWidget {
  final String imagem;
  final String texto;
  const BotaoMenu({super.key, required this.imagem, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.25,
      alignment: Alignment.center,
      child: SizedBox(
        width: 50,
        height: 58,
        child: ElevatedButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all(EdgeInsets.zero),
            backgroundColor: MaterialStateProperty.all(Colors.transparent),
            shadowColor: MaterialStateProperty.all(Colors.transparent),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.0),
                side: const BorderSide(color: Colors.transparent),
              ),
            ),
          ),
          onPressed: () => {},
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 9, top: 5),
                width: 24,
                height: 24,
                child: Image.network(imagem),
              ),
              Text(
                texto,
                style: const TextStyle(
                  fontSize: 11,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
