import 'package:flutter/material.dart';

class CustomScroll extends StatelessWidget {
  final List<Widget> children;
  final bool secondary;
  const CustomScroll({super.key, this.secondary = false, required this.children});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(secondary ? 'assets/images/background_2.png' : 'assets/images/background.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.topLeft,
          color: Colors.black.withOpacity(0.2),
          child: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.only(bottom: 80),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [...children],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
