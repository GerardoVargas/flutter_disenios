import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
        //Imagen
         Image( image: AssetImage('assets/landscape_img.jpg') ),

        //Titulo
         Title(),
         
         //Button section
         ButtonSection(),

         //Description
         Container(
           margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
           child: Text(
             'Sunt deserunt nulla Lorem minim fugiat exercitation consectetur est elit. Ipsum duis exercitation adipisicing labore. Do id eiusmod ullamco et fugiat excepteur pariatur tempor. Aliquip pariatur sit excepteur do anim reprehenderit laboris. Dolore cillum id consequat dolor adipisicing officia sunt. Magna in cillum duis officia id commodo.'),
         )
        ],
      ),
   );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Oeschinen Lake Campground', style: TextStyle(fontWeight: FontWeight.bold),),
              Text('Kandersteg, Switzerland', style: TextStyle(color: Colors.grey[500])),
            ],
          ),
          Expanded(child: Container()),
          Icon(Icons.star, color: Colors.red),
          Text('41'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget{
  const ButtonSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BuildIconColumn(icon: Icons.call, label: 'CALL'),
          BuildIconColumn(icon: Icons.near_me, label: 'ROUTE'),
          BuildIconColumn(icon: Icons.share, label: 'SHARE'),
        ],
      ),
    );
  }
}

class BuildIconColumn extends StatelessWidget {

  final IconData icon;
  final String label;

  const BuildIconColumn({
    Key? key, 
    required this.icon, 
    required this.label
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon( this.icon, color: Colors.blue, size: 30,),
        Container(
          margin: const EdgeInsets.only(top: 10),
          child: Text(
            this.label, 
            style: const TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.w500
            ),
          )
        )
      ],
    );
  }
}


