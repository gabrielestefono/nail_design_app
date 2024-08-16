import 'package:flutter/material.dart';

class BotaoGrande extends StatelessWidget {
  final String texto;
  final VoidCallback callback;
  const BotaoGrande({super.key, required this.texto, required this.callback});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      height: 45,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all<Color>(
              const Color(
                0xFF8E8870,
              ),
            ),
            shape: WidgetStateProperty.all<OutlinedBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
                side: const BorderSide(
                  color: Color(0XFFDFC6A3),
                  width: 1,
                ),
              ),
            )),
        onPressed: callback,
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
