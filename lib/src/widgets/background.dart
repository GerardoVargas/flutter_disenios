import 'dart:math';

import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final boxDecoration = const BoxDecoration(
      gradient: LinearGradient(
        colors: [
          Color(0xff2E305F),
          Color(0Xff202333)
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [0.2, 0.8]
      )
    );
  
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //Purple gradient
        Container( decoration: boxDecoration),

        //Rotate box
        Positioned(
          top: -60,
          left: -20,
          child: _PinkBox()
        )
      ] 
    );
  }
}

class _PinkBox extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi /5.0,
      child: Container(
        width: 300,
        height: 300,
        decoration: BoxDecoration(
          color: Colors.pink,
          borderRadius: BorderRadius.circular(80),
          gradient: const LinearGradient(
            colors: [
              Color.fromRGBO(236, 98, 188, 1),
              Color.fromRGBO(251, 142, 172, 1),
            ]
          )
        ),
      ),
    );
  }
}