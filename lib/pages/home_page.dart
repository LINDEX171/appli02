import 'dart:ffi';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Icon(
                  Icons.more_horiz,
                  size: 30,
                ),
              ))
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 70.0),
            child: Image(
              image: NetworkImage(
                  "https://th.bing.com/th/id/R.70ecfdd862bdc3fdbf5715085812f49e?rik=fDJPk4oWTEisvw&pid=ImgRaw&r=0"),
              width: 70,
              height: 70,
            ),
          ),
          SizedBox(height: 100),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Container(
                  height: 70,
                   color: Colors.white24,
                  child: Row(
                    children: [
                    Image(image: NetworkImage("https://th.bing.com/th/id/OIP.c2mM1ZkzOlxhYtugBEUU5QHaHa?rs=1&pid=ImgDetMain"),),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Text("DIIB L'index CapIA",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          Text("9+notifications",style: TextStyle(fontSize: 15,),),

                      ],),
                    ),
                      SizedBox(width: 50,),
                      Icon(Icons.chevron_right),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Container(
                  height: 70,
                  color: Colors.white24,
                  child: Row(
                    children: [
                      Image(image: NetworkImage("https://th.bing.com/th/id/OIP.c2mM1ZkzOlxhYtugBEUU5QHaHa?rs=1&pid=ImgDetMain"),),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("DIAY DIAY",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

                          ],),
                      ),
                      SizedBox(width: 110,),
                      Icon(Icons.chevron_right),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.only(left: 20,right: 20),
                child: OutlinedButton(onPressed: () {

                }, child: Text("Utiliser un autre profile"),),
              )
            ],
          ),
          SizedBox(height: 100),
         Column(
           children: [
             Container(
               width: double.infinity,
               padding: EdgeInsets.only(left: 20,right: 20),
               child: OutlinedButton(onPressed: () {

               }, child: Text("Créer un compte")
               ),
             ),
             Image(height: 80, image: NetworkImage("https://th.bing.com/th/id/R.8e45ff61b23561ba4dbddf04e1305b45?rik=LnEbM4yVQ%2fmf%2fw&pid=ImgRaw&r=0"))
           ],
         )
        ],
      ),
    );
  }
}
