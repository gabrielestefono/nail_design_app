import 'package:flutter/material.dart';
import 'package:nail_app/template/components/botao_menu.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0XFF8E8870),
      width: MediaQuery.of(context).size.width,
      height: 80,
      child: const Row(
        children: [
          BotaoMenu(
            imagem: "assets/icons/home.png",
            texto: "Início",
          ),
          BotaoMenu(
            imagem: "assets/icons/calendar.png",
            texto: "Agenda",
          ),
          BotaoMenu(
            imagem: "assets/icons/mensages.png",
            texto: "Chat",
          ),
          BotaoMenu(
            imagem: "assets/icons/profile.png",
            texto: "Perfil",
          ),
        ],
      ),
    );
  }
}
