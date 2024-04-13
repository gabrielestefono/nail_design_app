import 'package:flutter/material.dart';

class BotaoCategoria extends StatelessWidget {
  final String imagem;
  const BotaoCategoria({super.key, required this.imagem});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 225,
      height: 225,
      child: ElevatedButton(
        onPressed: () => {},
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
            EdgeInsets.zero,
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            padding: EdgeInsets.zero,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.network(
              imagem,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
