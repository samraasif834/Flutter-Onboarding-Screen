import 'package:flutter/material.dart';
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
            Container(
              color: Colors.red,
              child: Center(
                child: Text('page 1'),
              ),
            ),
            Container(
              color: Colors.indigo,
              child: Center(
                child: Text('page 2'),
              ),
            ),
            Container(
              color: Colors.green,
              child: Center(
                child: Text('page 3'),
              ),
            )
          ],
        ),
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(onPressed: () {}, child: Text('Skip')),
            Center(
              child:SmoothPageIndicator(
                controller:controller,
                count:3,
              ),
            ),
            TextButton(onPressed: () {}, child: Text('next'))
          ],
        ),
      ),
    );
  }
}
