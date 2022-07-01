import 'package:flutter/material.dart';

import 'package:disenos/src/widgets/background.dart';
import 'package:disenos/src/widgets/card_table.dart';
import 'package:disenos/src/widgets/custom_bottom_navigator.dart';
import 'package:disenos/src/widgets/page_title.dart';


class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //Background
          Background(),

          // ScrollView
          _HomeBody(),

        ],
      ),
      //Bottom Navigation Bar
      bottomNavigationBar: CustomBottomNavigation(),
   );
  }
}

class _HomeBody extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //Titles
          PageTitle(),

          //Card Table
          CardTable()
        ],
      ),
    );
  }
}