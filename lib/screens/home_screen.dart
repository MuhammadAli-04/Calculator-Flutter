import 'package:calculator/Components/calculator.dart';
import 'package:calculator/widgets/button.dart';
import 'package:calculator/widgets/button_text.dart';
import 'package:calculator/widgets/text_text.dart';
import 'package:flutter/material.dart';

import '../widgets/result_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final calculator = Calculator.getInstance();
  String text = "";
  String result = "";

  @override
  void initState() {
    text = calculator.text;
    result = calculator.result;
    super.initState();
  }

  void controlState() {
    setState(() {
      text = calculator.text;
      result = calculator.result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.35,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(32.0),
                  bottomRight: Radius.circular(32.0),
                ),
                color: Colors.blue.shade100),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextText(text: text),
                  ResultText(text: result),
                ],
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Button(
                      color: Colors.purple.shade100,
                      child: const ButtonText(text: "AC"),
                      onPressed: () {
                        calculator.clearAll();
                        controlState();
                      },
                    ),
                    Button(
                      color: Colors.blue.shade100,
                      child: const ButtonText(text: "( )"),
                      onPressed: () {
                        controlState();
                      },
                    ),
                    Button(
                      color: Colors.blue.shade100,
                      child: const ButtonText(text: "%"),
                      onPressed: () {
                        calculator.add("/100", true);
                        controlState();
                      },
                    ),
                    Button(
                      color: Colors.blue.shade100,
                      child: const ButtonText(text: "÷"),
                      onPressed: () {
                        calculator.add("/", true);
                        controlState();
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Button(
                      color: Colors.grey.shade200,
                      child: const ButtonText(text: "7"),
                      onPressed: () {
                        calculator.add("7", false);
                        controlState();
                      },
                    ),
                    Button(
                      color: Colors.grey.shade200,
                      child: const ButtonText(text: "8"),
                      onPressed: () {
                        calculator.add("8", false);
                        controlState();
                      },
                    ),
                    Button(
                      color: Colors.grey.shade200,
                      child: const ButtonText(text: "9"),
                      onPressed: () {
                        calculator.add("9", false);
                        controlState();
                      },
                    ),
                    Button(
                      color: Colors.blue.shade100,
                      child: const ButtonText(text: "X"),
                      onPressed: () {
                        calculator.add("*", true);
                        controlState();
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Button(
                      color: Colors.grey.shade200,
                      child: const ButtonText(text: "4"),
                      onPressed: () {
                        calculator.add("4", false);
                        controlState();
                      },
                    ),
                    Button(
                      color: Colors.grey.shade200,
                      child: const ButtonText(text: "5"),
                      onPressed: () {
                        calculator.add("5", false);
                        controlState();
                      },
                    ),
                    Button(
                      color: Colors.grey.shade200,
                      child: const ButtonText(text: "6"),
                      onPressed: () {
                        calculator.add("6", false);
                        controlState();
                      },
                    ),
                    Button(
                      color: Colors.blue.shade100,
                      child: const ButtonText(text: "-"),
                      onPressed: () {
                        calculator.add("-", true);
                        controlState();
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Button(
                      color: Colors.grey.shade200,
                      child: const ButtonText(text: "1"),
                      onPressed: () {
                        calculator.add("1", false);
                        controlState();
                      },
                    ),
                    Button(
                      color: Colors.grey.shade200,
                      child: const ButtonText(text: "2"),
                      onPressed: () {
                        calculator.add("2", false);
                        controlState();
                      },
                    ),
                    Button(
                      color: Colors.grey.shade200,
                      child: const ButtonText(text: "3"),
                      onPressed: () {
                        calculator.add("3", false);
                        controlState();
                      },
                    ),
                    Button(
                      color: Colors.blue.shade100,
                      child: const ButtonText(text: "+"),
                      onPressed: () {
                        calculator.add("+", true);
                        controlState();
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Button(
                      color: Colors.grey.shade200,
                      child: const ButtonText(text: "0"),
                      onPressed: () {
                        calculator.add("0", false);
                        controlState();
                      },
                    ),
                    Button(
                      color: Colors.grey.shade200,
                      child: const ButtonText(text: "."),
                      onPressed: () {
                        calculator.add(".", true);
                        controlState();
                      },
                    ),
                    Button(
                      color: Colors.grey.shade200,
                      child: const Icon(Icons.backspace),
                      onPressed: () {
                        calculator.remove();
                        controlState();
                      },
                    ),
                    Button(
                      color: Colors.blue.shade100,
                      child: const ButtonText(text: "="),
                      onPressed: () {
                        calculator.equals();
                        controlState();
                      },
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
