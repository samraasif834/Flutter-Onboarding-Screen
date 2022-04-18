import 'package:flutter/material.dart';

class BuildPage extends StatelessWidget {
  Color color;
  String urlimage;
  String title;
  String subtitle;
  BuildPage({Key? key,required this.color,required this.urlimage,required this.title,required this.subtitle }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(urlimage,
          fit: BoxFit.cover,
          width: double.infinity,
          ),
          const SizedBox(height:64),
          Text(title,style: TextStyle(
            color: Colors.teal.shade700,
            fontSize: 32,
            fontWeight: FontWeight.bold,

          ),),
          
        ],
      ),
    );
  }
}
