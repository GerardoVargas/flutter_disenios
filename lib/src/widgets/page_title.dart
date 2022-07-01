import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Classify transaction', style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text('Classify this transaction into a particular category', style: TextStyle(fontSize: 18, color: Colors.white))
          ],
        ),
      ),
    );
  }
}