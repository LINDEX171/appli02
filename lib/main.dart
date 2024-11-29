import 'package:flutter/material.dart';
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
  HomePage({super.key});

@override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final pages = [
    DiscussionsPage(),
    ActuPage(),
    CommunautePage(),
    AppelPage(),
  ];
   int  pagesindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading:IconButton(
          style: IconButton.styleFrom(backgroundColor: Colors.white10,elevation: 10),
              // style: IconButton.styleFrom(shape: CircleBorder(side: BorderSide(width: 10)),backgroundColor: Colors.blueAccent),
               // padding: EdgeInsets.only(left: 20),
                onPressed: () {
            }, icon: Icon(Icons.more_horiz,color: Colors.black,)),
        title: Center(child: Text("Discussions",)),
       actions: [
         IconButton(onPressed: () {

         }, icon: Icon(Icons.photo_camera)),
         IconButton(
             style: IconButton.styleFrom(backgroundColor: Colors.green,),
             onPressed: () {
           
         }, icon: Icon(Icons.add,color: Colors.white,))
       ],

      ),
      body:pages[pagesindex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(border: Border(top: BorderSide(color: Colors.grey,width: 1.5))),
        child: NavigationBar(
          indicatorColor: Colors.transparent,
          selectedIndex: pagesindex,
          onDestinationSelected: (int index) {
            setState(() {
              pagesindex = index;
            });
          },
          backgroundColor: Colors.white,
          destinations: [
            NavigationDestination(
                icon: Icon(Icons.message, color: Colors.black54,), label: "Discussions", selectedIcon:Icon(Icons.message, color: Colors.black,) ,),
            NavigationDestination(
              icon: Icon(Icons.filter_tilt_shift,color: Colors.black54,), label: "Actus",selectedIcon:Icon(Icons.filter_tilt_shift, color: Colors.black,) ,),
            NavigationDestination(
              icon: Icon(Icons.group,color: Colors.black54,), label: "Communauté",selectedIcon:Icon(Icons.group, color: Colors.black,) ,),
            NavigationDestination(
              icon: Icon(Icons.phone,color: Colors.black54,), label: "Appels",selectedIcon:Icon(Icons.phone, color: Colors.black,) ,)
          ],
        ),
      ),
    );
  }
}

