import 'package:flutter/material.dart';
import 'package:nail_app/components/calendario.dart';

class Agenda extends StatelessWidget {
  const Agenda({super.key});

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: const Color(0XFF4E413B),
          insetPadding: EdgeInsets.zero,
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            height: 500,
            child: Stack(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 42,
                      alignment: Alignment.center,
                      color: const Color(0xFF8E8870),
                      child: const Text(
                        "Agende uma Data",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    const Calendario(),
                  ],
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            const Color(0XFF8E8870),
                          ),
                        ),
                        onPressed: () => {},
                        child: const Text(
                          "Agendar",
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            const Color(0XFF8E8870),
                          ),
                        ),
                        onPressed: () => {
                          Navigator.pop(context),
                        },
                        child: const Text(
                          "Cancelar",
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomRight,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.0),
                side: const BorderSide(color: Colors.transparent),
              ),
            ),
            backgroundColor: MaterialStateProperty.all(
              Colors.transparent,
            ),
            shadowColor: MaterialStateProperty.all(
              Colors.transparent,
            )),
        onPressed: () => _showDialog(context),
        child: Column(
          children: [
            Image.network('assets/icons/calendar.png'),
            const Text(
              "Agendar",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontVariations: [
                  FontVariation('wght', 400),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
