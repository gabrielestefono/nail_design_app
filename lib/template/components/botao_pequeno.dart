import 'package:flutter/material.dart';

class BotaoPequeno extends StatelessWidget {
  final bool secundario;
  final String texto;
  const BotaoPequeno({super.key, required this.texto, this.secundario = false});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      height: 42,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
              secundario ? const Color(0XFF3A2E26) : const Color(0xFF8E8870),
            ),
            shape: MaterialStateProperty.all<OutlinedBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
                side: BorderSide(
                  color: secundario ? const Color(0XFF3A2E26) : const Color(0XFFDFC6A3),
                  width: 1,
                ),
              ),
            )),
        onPressed: () => {},
        child: Text(
          texto,
          style: const TextStyle(
            color: Colors.white,
            fontFamily: 'Raleway',
            fontSize: 20,
            fontVariations: [
              FontVariation('wght', 400),
            ],
          ),
        ),
      ),
    );
  }
}
