import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(height: 35,),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Image(
                  image: NetworkImage(
                      "https://th.bing.com/th/id/R.70ecfdd862bdc3fdbf5715085812f49e?rik=fDJPk4oWTEisvw&pid=ImgRaw&r=0"),
                  height: 70,
                ),
              ),
              SizedBox(height: 60,),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
                     hintText: "numero ou email",
                      labelText: "Numero mobile ou e-mail",
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.lightGreenAccent),)
                  ),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
                        hintText: "mot de passe",
                        labelText: "mot de passe",
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.lightGreenAccent),)

                    ),),
                ),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.only(right: 15,left: 15,bottom: 5),
                child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent), onPressed: () {

                }, child: Text("Se connecter",style: TextStyle(color: Colors.white),)),
              ),
              Text("Mot de passe oublié ?"),
              SizedBox(height: 220,),
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(left: 15,right: 15,top: 15),
                    child: OutlinedButton(
                        style: OutlinedButton.styleFrom(side: BorderSide(color: Colors.blue)),
                        onPressed: () {
                    
                    }, child: Text("Créer un compte",style: TextStyle(color: Colors.blueAccent),)),
                  ),
                  Image(height:50, image: NetworkImage("https://th.bing.com/th/id/R.8e45ff61b23561ba4dbddf04e1305b45?rik=LnEbM4yVQ%2fmf%2fw&pid=ImgRaw&r=0"))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
