import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp_clone/pages/actus.dart';
import 'package:whatsapp_clone/pages/appels.dart';
import 'package:whatsapp_clone/pages/communaute.dart';
import 'package:whatsapp_clone/pages/discussions.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: Colors.green,
      scaffoldBackgroundColor: Colors.white),
      home:  HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final pages = [
    ActuPage(),
    AppelPage(),
    CommunautePage(),
    DiscussionsPage(),
      ActuPage()
  ];
  int pagesIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title:  Row(
            crossAxisAlignment:CrossAxisAlignment.center ,
            children: [
              Text(
                'Instagram',
                style: GoogleFonts.pacifico(textStyle: TextStyle(fontSize: 20.0,color: Colors.black)),
              ),
              IconButton(onPressed: () {
      
              }, icon: Icon(Icons.arrow_drop_down_outlined))
            ],
          ),
          backgroundColor: Colors.white,
          actions: [
            IconButton(onPressed: () {
      
            }, icon: Icon(Icons.favorite_border,color: Colors.black,)),
            IconButton(onPressed: () {
      
            }, icon: Icon(Icons.messenger_outline,color: Colors.black,))
          ],
      bottom:  TabBar(
        tabs: [
        Tab(icon: Icon(Icons.abc_outlined),),
          Tab(icon: Icon(Icons.nat),),
          Tab(icon: Icon(Icons.lan_outlined),),
      ],
      ),

        ),
        body: TabBarView(
          children: [
            Center(child: Text("hi"),),
            Center(child: Text("hoo"),),
            Center(child: Text("hein"),),
          ],
        ),

      ),
    );
  }
}
