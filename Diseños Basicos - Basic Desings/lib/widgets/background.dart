import 'dart:math';

import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);

  final boxDecoration = const BoxDecoration(
    gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [
          0.2,
          0.5
        ],
        colors: [
          Color(0xff2E305F),
          Color(0xff202333),
        ]),
  );

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Gradiente Purpura
        Container(
          decoration: boxDecoration,
          //color: Colors.red,
        ),
        // Caja Rosada
        Positioned(
          top: -40,
          left: -30,
          child: _PinkBox(),
        ),
      ],
    );
  }
}

class _PinkBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi / 1.6,
      child: Container(
        width: 350,
        height: 350,
        decoration: BoxDecoration(
            color: Colors.pink,
            borderRadius: BorderRadius.circular(60),
            gradient: const LinearGradient(colors: [
              Color.fromRGBO(236, 98, 188, 1),
              Color.fromRGBO(241, 142, 172, 1),
            ])),
      ),
    );
  }
}
