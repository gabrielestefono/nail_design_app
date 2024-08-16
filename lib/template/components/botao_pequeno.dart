import 'package:flutter/material.dart';

class BotaoPequeno extends StatelessWidget {
  final bool secundario;
  final String texto;
  final VoidCallback callback;
  const BotaoPequeno({
    super.key,
    required this.texto,
    required this.callback,
    this.secundario = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      height: 42,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all<Color>(
              secundario ? const Color(0XFF3A2E26) : const Color(0xFF8E8870),
            ),
            shape: WidgetStateProperty.all<OutlinedBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
                side: BorderSide(
                  color: secundario
                      ? const Color(0XFF3A2E26)
                      : const Color(0XFFDFC6A3),
                  width: 1,
                ),
              ),
            )),
        onPressed: callback,
        child: Text(
          texto,
          style: const TextStyle(
            color: Colors.white,
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
