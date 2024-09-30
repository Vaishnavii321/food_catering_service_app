import 'package:craft_my_plate/build_onboarding_page.dart';
import 'package:craft_my_plate/login_screen.dart';
import 'package:flutter/material.dart';

class OnboardingScreens extends StatefulWidget {
  const OnboardingScreens({super.key});

  @override
  State<OnboardingScreens> createState() => _OnboardingScreensState();
}

class _OnboardingScreensState extends State<OnboardingScreens> {
  @override
  final PageController _pageController = PageController();
  int currentIndex = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(247, 246, 240, 1),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:35, right: 35),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 35,
                  width: 75,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(232, 224, 234, 1),
                      borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                    onPressed: (){
                      _pageController.jumpToPage(2);
                    },
                    child: const Text('Skip', style: TextStyle(fontSize: 16, color: Color.fromRGBO(99, 24, 175, 1))),
                  ),
                ),
              ),
            ),
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (int index){
                  setState(() {
                    currentIndex = index;
                  });
                },
                children: const [
                  BuildOnboardingPage(
                    image: 'assets/illustrator_1.png',
                    title: 'Choose & Customize!',
                    description: '   Select a platter, choose and customize\nmenu items and craft a personalized menu\n                           for event',
                  ),
                  BuildOnboardingPage(
                    image: 'assets/illustrator_2.png',
                    title: 'Order More, Save More!',
                    description: '   Experience culinary artistry like never\nbefore with our innovation and exquisite\n                   cuisine creations',
                  ),
                  BuildOnboardingPage(
                    image: 'assets/illustrator_3.png',
                    title: 'Personal Order Executive',
                    description: '    Embark on a personalized culinary journey\n      with our dedicated one-to-one customer\n            support, ensuring a seamless and \n      satisfying experience every step of the\n                                   way.',
                  ),
                ],
              ),
            ),
        
            //page indicator
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3, (index) => Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  width: 30,
                  height: 10,
                  decoration: BoxDecoration(
                    color: currentIndex == index ? const Color.fromRGBO(99, 24, 175, 1) : const Color.fromRGBO(224, 212, 236, 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                )
              )
            ),
            const SizedBox(height: 40),
        
            //arrow button
            currentIndex == 2
            ? Padding(
              padding: const EdgeInsets.only(bottom : 30.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginScreen()), // Navigate to the login screen
                  );
                },
                child: Container(
                  height: 60,
                  width: 200,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(224, 212, 236, 1),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                  child: Row(
                    children: [
                      const Text('Get Started', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300, color: Color.fromRGBO(99, 24, 175, 1))),
                      const Spacer(),
                      Container(
                        height: 45,
                        width: 45,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(99, 24, 175, 1),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 18,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
            : Padding(
              padding: const EdgeInsets.only(bottom : 30.0),
              child: GestureDetector(
                onTap: (){
                  _pageController.nextPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
                child: Container(
                  height: 62,
                  width: 62,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(224, 212, 236, 1),
                      borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                    child: Container(
                      height: 42,
                      width: 42,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(99, 24, 175, 1),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.arrow_forward, color: Color.fromRGBO(252, 255, 247, 1)),
                    ),
                  ),
                ),
              ),
            )
          ],
        )
      )
    );
  }
}