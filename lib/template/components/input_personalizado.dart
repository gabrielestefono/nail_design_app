import 'package:flutter/material.dart';

class InputPersonalizado extends StatelessWidget {
  final bool? senha;
  final String texto;
  const InputPersonalizado({super.key, required this.texto, this.senha = false});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            color: const Color(0XFF8E8870),
            borderRadius: BorderRadius.circular(15.0),
          ),
          width: MediaQuery.of(context).size.width * 0.8,
          child: TextField(
            obscureText: senha!,
            cursorColor: Colors.white,
            decoration: InputDecoration(
              labelText: texto,
              labelStyle: const TextStyle(
                color: Colors.white,
              ),
              border: InputBorder.none,
              contentPadding: const EdgeInsets.only(left: 20, right: 20),
            ),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontVariations: [
                FontVariation('wght', 400),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
