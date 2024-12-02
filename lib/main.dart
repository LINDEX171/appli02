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
    return Scaffold(
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
      ),
       body: pages[pagesIndex],
       bottomNavigationBar: NavigationBar(
         indicatorColor: Colors.transparent,
         selectedIndex: pagesIndex,
         backgroundColor: Colors.white,
         destinations: [
           NavigationDestination(icon: Icon(Icons.home,color: Colors.black26,), label: "", selectedIcon: Icon(Icons.home,color: Colors.black,),),
           NavigationDestination(icon: Icon(Icons.search,color: Colors.black26,), label: "", selectedIcon: Icon(Icons.search,color: Colors.black,),),
           NavigationDestination(icon: Icon(Icons.add_box_rounded,color: Colors.black26,), label: "", selectedIcon: Icon(Icons.add_box_rounded,color: Colors.black,),),
           NavigationDestination(icon: Icon(Icons.video_collection,color: Colors.black26,), label: "", selectedIcon: Icon(Icons.video_collection,color: Colors.black,),),
           NavigationDestination(icon: Icon(Icons.person,color: Colors.black26,), label: "", selectedIcon: Icon(Icons.person,color: Colors.black,),),
         ],
         onDestinationSelected: (index) {
           setState(() {
             pagesIndex = index ;
           });
         },
       ),
    );
  }
}
