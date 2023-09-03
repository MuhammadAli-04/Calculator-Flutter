import 'package:flutter/material.dart';

class ButtonText extends StatelessWidget {
  const ButtonText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 24.0,
        fontFamily: "Lato",
      ),
    );
  }
}
