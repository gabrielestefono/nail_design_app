import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String titulo;
  const CustomAppBar({super.key, required this.titulo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(116),
        child: AppBar(
          backgroundColor: const Color(0xFF8E8870),
          toolbarHeight: 116,
          leading: BackButton(
            onPressed: () => {},
            color: Colors.white,
          ),
          centerTitle: true,
          title: SizedBox(
            child: Text(
              titulo,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
