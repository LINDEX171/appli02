import 'package:flutter/material.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          PageView(
            children: [
              Text("hi"),
              Text("ho"),
              Text("hin"),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    3,
                    (index) {
                      return AnimatedContainer(
                        alignment: AlignmentDirectional.center,
                        duration: Duration(milliseconds: 300),
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            color: Colors.lightBlueAccent,
                            borderRadius: BorderRadius.circular(10)),
                        margin: EdgeInsets.only(right: 5),
                      );
                    },
                  ),
                ),
                Container(
                    width: double.infinity,
                    child: ElevatedButton( style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(), backgroundColor: Colors.lightBlueAccent,), onPressed: () {}, child: Text("Get started",style: TextStyle(color: Colors.white),),))
              ],
            ),
          )
        ],
      ),

    );
  }
}
