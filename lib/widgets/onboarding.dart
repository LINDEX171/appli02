import 'package:flutter/material.dart';


class Onboarding extends StatelessWidget {
  final String title;
  final String subtitle ;
  final String image;

  const Onboarding({
    Key? key ,
    required this.title,
    required this.subtitle,
    required this.image
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Positioned.fill( child: Image.asset(image,fit: BoxFit.cover,),),
          Positioned.fill(child: Container(
            color: Colors.white.withOpacity(0.9),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              Text(textAlign: TextAlign.center, title,style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.lightBlue),),
              Text(textAlign: TextAlign.center,subtitle,style: TextStyle(fontSize: 20,color: Colors.lightBlue),)
            ],),
          ))
        ],
      ),
    );
  }
}
