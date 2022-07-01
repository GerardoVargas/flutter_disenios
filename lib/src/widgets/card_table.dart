import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(
          children: [
            _SingleCard(color: Colors.blue, icon: Icons.border_all, text: 'General'),
            _SingleCard(color: Colors.pinkAccent, icon: Icons.car_rental, text: 'Transport'),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(color: Colors.greenAccent, icon: Icons.call, text: 'Call'),
            _SingleCard(color: Colors.teal, icon: Icons.map_outlined, text: 'Route'),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(color: Colors.deepOrange, icon: Icons.dining_rounded, text: 'Dinner'),
            _SingleCard(color: Colors.deepPurple, icon: Icons.hotel_outlined, text: 'Hotel'),
          ]
        ),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard({
    required this.icon, 
    required this.color, 
    required this.text,
  });
  

  @override
  Widget build(BuildContext context) {
    return _SingleCardBackground(child: 
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: color,
            child: Icon(icon, size: 40, color: Colors.white),
            radius: 30,
          ),
          SizedBox(height: 10),
          Text(text, style: TextStyle(color: color, fontSize: 18) )
        ],
      )
    );
  }
}

class _SingleCardBackground extends StatelessWidget {

  final Widget child;

  const _SingleCardBackground({
    Key? key, 
    required this.child
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 150,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20)
            ),
            child: this.child,
          ),
        ),
      ),
    );
  }
}