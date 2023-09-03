import 'package:flutter/material.dart';

class ResultText extends StatelessWidget {
  const ResultText({super.key, required this.text});

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
          fontSize: 48.0,
          fontFamily: "Lato",
        ),
      ),
    );
  }
}
