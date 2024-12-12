import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:whatsapp_clone/pages/home_page.dart';
import 'package:whatsapp_clone/pages/onboarding_page.dart';
import 'package:whatsapp_clone/widgets/onboarding.dart';


class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});


  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    LoadAnimation();
  }


  Timer LoadAnimation() {
   return Timer(Duration(seconds: 7), onloaded);
}

  onloaded(){
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Onboarding(),));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child:
        Lottie.asset("assets/lotties/world.json"),),
    );
  }
}
