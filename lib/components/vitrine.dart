import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Vitrine extends StatelessWidget {
  const Vitrine({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 100,
        viewportFraction: 1 / 3, // Adicionado para mostrar 3 slides por página
      ),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              child: Image.network('assets/images/btn_p.png'),
            );
          },
        );
      }).toList(),
    );
  }
}
