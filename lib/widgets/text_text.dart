import 'package:flutter/material.dart';

class TextText extends StatelessWidget {
  const TextText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      reverse: true,
      child: Text(
        text,
        textAlign: TextAlign.right,
        style: const TextStyle(
          fontSize: 64.0,
          fontFamily: "Lato",
        ),
      ),
    );
  }
}
