import 'package:flutter/material.dart';
// import 'package:photobooth_ui/photobooth_ui.dart';

class LandingBackground extends StatelessWidget {
  const LandingBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      key: const Key('landingPage_background'),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromRGBO(250, 250, 250, 1),
            Color.fromRGBO(255, 255, 255, 1),
          ],
        ),
      ),
      child: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/backgrounds/background_light.png'),
                scale: 1.5,
                repeat: ImageRepeat.repeat,
              ),
            ),
          ),
          // Outros widgets podem ser adicionados aqui
        ],
      ),
    );
  }
}
