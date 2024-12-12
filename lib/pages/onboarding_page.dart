import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/onboarding.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {

    final PageController _pageController = PageController();
    int _currentPage = 0 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 30,
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index ;
              });
            },
            children: [
              Onboarding(title: "🌍 Explore the World", subtitle: 'Find every country and its capital in one place.', image: "assets/images/country2.png"),
              Onboarding(title: "📖 Learn Every Detail", subtitle: 'Capitals, population, official languages, and much more at your fingertips.', image: "assets/images/country1.jpg"),
              Onboarding(title: "🚀 Your Universal Guide", subtitle: 'Quickly search and effortlessly navigate through country information.', image: "assets/images/country3.jpg"),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(40),
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
                        width: _currentPage==index ? 18 : 10,
                        decoration: BoxDecoration(
                            color: _currentPage==index ? Colors.lightBlueAccent : Colors.grey ,
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
