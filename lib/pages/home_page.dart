import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCountries();
  }

  final dio = Dio();
  List pays = [];
  getCountries() async {
    final result = await dio.get("https://restcountries.com/v3.1/all");
    print(result);

     setState(() {
       pays = result.data;
     });
  }

  @override
  Widget build(BuildContext context) {
    pays.sort((a, b) => a["name"]["common"].compareTo(b["name"]["common"]));
    return Scaffold(
        appBar: AppBar(
      actions: [
        Center(
            child: IconButton(
                onPressed: () {
                  getCountries();
                },
                icon: Icon(Icons.refresh))),
      ],
    ),
    body: ListView.builder(
      itemCount: pays.length,
      itemBuilder: (context, index) {
         return ListTile(title: Text(pays[index]["name"]["common"]),leading: Text(pays[index]["flag"],style: TextStyle(fontSize: 40),),subtitle: pays[index]["capital"]!= null  ?  Text(pays[index]["capital"][0]) : Text("cap not avalaible") , onTap: () {

         },);
      },)
    );
  }
}
