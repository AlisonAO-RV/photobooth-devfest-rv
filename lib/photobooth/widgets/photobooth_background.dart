import 'package:flutter/material.dart';

class PhotoboothBackground extends StatelessWidget {
  const PhotoboothBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      key: const Key('landingPage_background'),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromRGBO(14, 15, 15, 1),
            Color.fromRGBO(14, 15, 15, 1),
          ],
        ),
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/backgrounds/background.png',
            scale: 1.5,
            repeat: ImageRepeat.repeat,
            filterQuality: FilterQuality.high,
          ),
          // Positioned(
          //   left: 50,
          //   bottom: size.height * 0.2,
          //   child: Image.asset(
          //     'assets/backgrounds/red_box.png',
          //     height: 150,
          //   ),
          // ),
          // Positioned(
          //   right: -50,
          //   top: size.height * 0.1,
          //   child: Image.asset(
          //     'assets/backgrounds/blue_circle.png',
          //     height: 150,
          //   ),
          // ),
          // Positioned(
          //   right: 50,
          //   bottom: size.height * 0.1,
          //   child: Image.asset(
          //     'assets/backgrounds/yellow_plus.png',
          //     height: 150,
          //   ),
          // ),
        ],
      ),
    );
  }
}
