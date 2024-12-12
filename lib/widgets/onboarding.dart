import 'package:flutter/material.dart';


class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: Image.asset("assets/images/country1.jpg",fit: BoxFit.cover,)),
          Positioned.fill(child: Text("title"))
        ],
      ),
    );
  }
}
