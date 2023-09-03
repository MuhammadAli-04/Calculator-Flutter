import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.child,
    required this.onPressed,
    required this.color,
  });

  final Widget child;
  final VoidCallback onPressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      onPressed: onPressed,
      color: color,
      shape: const CircleBorder(),
      height: MediaQuery.of(context).size.height * 0.09,
      child: child,
    );
  }
}
