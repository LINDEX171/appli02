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
      body:pages[pagesindex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(border: Border(top: BorderSide(color: Colors.grey,width: 1.5))),
        child: NavigationBar(
          selectedIndex: pagesindex,
          onDestinationSelected: (int index) {
            setState(() {
              pagesindex = index;
            });
          },
          backgroundColor: Colors.white,
          destinations: [
            NavigationDestination(
                icon: Icon(Icons.message), label: "Discussions",),
            NavigationDestination(
              icon: Icon(Icons.filter_tilt_shift), label: "Actus",),
            NavigationDestination(
              icon: Icon(Icons.group), label: "Communauté",),
            NavigationDestination(
              icon: Icon(Icons.phone), label: "Appels",)
          ],
        ),
      ),
    );
  }
}

