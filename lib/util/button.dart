import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String imagePath;
  final String buttonText;

  const MyButton({
    Key? key,
    required this.imagePath,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade400,
                    blurRadius: 40,
                    spreadRadius: 10)
              ]),
          child: Center(child: Image.asset(imagePath)),
        ),
        SizedBox(
          height: 12,
        ),
        Text(
          buttonText,
          style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade600),
        )
      ],
    );
  }
}
