import 'package:flutter/material.dart';

class BotaoGrande extends StatelessWidget {
  final String texto;
  const BotaoGrande({super.key, required this.texto});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      height: 45,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
              const Color(
                0xFF8E8870,
              ),
            ),
            shape: MaterialStateProperty.all<OutlinedBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
                side: const BorderSide(
                  color: Color(0XFFDFC6A3),
                  width: 1,
                ),
              ),
            )),
        onPressed: () => {},
        child: Text(
          texto,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontVariations: [
              FontVariation('wght', 400),
            ],
          ),
        ),
      ),
    );
  }
}
