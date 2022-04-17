import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({ Key? key }) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
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
    );
  }
}