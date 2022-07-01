import 'package:flutter/material.dart';
import 'package:disenos/src/screens/basic_design.dart';
import 'package:disenos/src/screens/home_screen.dart';
import 'package:disenos/src/screens/scroll_design.dart';
import 'package:flutter/services.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData.dark(),
      initialRoute: 'home_screen',
      routes: {
        'basic_design' : ( _ ) => BasicDesignScreen(),
        'home_screen' : ( _ ) => HomeScreen(),
        'scroll_screen' : ( _ ) => ScrollScreen(),
      },
    );
  }
}