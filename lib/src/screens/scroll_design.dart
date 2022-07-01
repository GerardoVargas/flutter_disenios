import 'package:flutter/material.dart';


class ScrollScreen extends StatelessWidget {

  final boxDecoration = const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.5,0.5],
          colors: [
            Color(0xFF7aeccb),
            Color(0xff62c8e0)
          ])
    );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff62c8e0),
      body: Container(
        decoration: boxDecoration,
        child: PageView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          children: [
            Screen1(),
            Screen2(),
          ],
        ),
      )
   );
  }
}

class Screen1 extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Background(),
        MainContent(),
        
      ],
    );
  }
}

class MainContent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white);
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 25),
          Text('11°', style: textStyle),
          SizedBox(height: 20),
          Text('Miércoles', style: textStyle),
          //TODO: expandend
          Expanded(child: Container()),
          Icon(Icons.keyboard_arrow_down, color: Colors.white, size: 100,)
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      alignment: Alignment.topCenter,
      decoration: const BoxDecoration(
        color: Color(0xff62c8e0),
        image: DecorationImage( 
          image: AssetImage('assets/scroll-1.png'),
          fit: BoxFit.cover
        ),
      ),
    );
  }
}

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff62c8e0),
      child: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Color(0xff0098FA),
              shape: StadiumBorder()
            ),
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Text('Bienvenido', style: TextStyle(color: Colors.white, fontSize: 25)),
            ),
          ),
        ),
      ),
    );
  }
}