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
          height: 46,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: const Color(0XFF8E8870),
            borderRadius: BorderRadius.circular(15.0),
          ),
          width: MediaQuery.of(context).size.width * 0.8,
          child: TextField(
            cursorHeight: 20,
            obscureText: senha!,
            cursorColor: Colors.white,
            decoration: InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.never,
              isDense: true,
              hintText: texto,
              hintStyle: const TextStyle(
                color: Colors.white,
              ),
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            ),
            style: const TextStyle(
              color: Colors.white,
              height: 1,
              fontSize: 20,
              fontVariations: [
                FontVariation('wght', 400),
              ],
            ),
            textAlignVertical: TextAlignVertical.center,
          ),
        ),
      ),
    );
  }
}
