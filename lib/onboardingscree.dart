import 'package:flutter/material.dart';
import 'package:onboardingscreen/widget/buildpage.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final controller = PageController();
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(bottom: 80),
        child: PageView(
          controller: controller,
          children: [
          BuildPage(
color: Colors.green.shade100, subtitle: 'lorem ipusm lorem ipusm', title: 'Hello', urlimage: 'assets/images/img1.png'
           ),
            BuildPage(color: Colors.cyan, subtitle: 'lorem ipusm lorem ipusm', title: 'Bye', urlimage: 'assets/images/img1.png',

           ),
           
           
             BuildPage(
color: Colors.blue.shade100, subtitle: 'lorem ipusm lorem ipusm', title: 'Good evening', urlimage: 'assets/images/img1.png'
           ),
           
          ],
        ),
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(onPressed: () =>controller.jumpToPage(2), child: Text('Skip')),
            Center(
              child:SmoothPageIndicator(
                controller:controller,
                count:3,
                effect: WormEffect(
                  spacing: 16,
                  dotColor: Colors.black,
                  activeDotColor: Colors.teal.shade700
                ),
                onDotClicked: (index)=>controller.animateToPage(index,
                 duration:const Duration(milliseconds: 500), 
                 curve: Curves.easeIn),
              ),
            ),
            TextButton(onPressed: ()=>controller.nextPage(duration: const Duration(microseconds: 500), curve: Curves.easeInOut), child: Text('next'))
          ],
        ),
      ),
    );
  }
}
