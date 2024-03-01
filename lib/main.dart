import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String text = ' Change Color';
  Color bgcolor = Colors.orange;

  void svetter() {
    Random random = Random();
    setState(() {
      var resultat = random.nextInt(5);
      if (resultat == 0) {
        bgcolor = Colors.orange;
      } else if (resultat == 1) {
        bgcolor = Colors.green;
      } else if (resultat == 2) {
        bgcolor = Colors.lime;
      } else if (resultat == 3) {
        bgcolor = Colors.pink;
      } else if (resultat == 4) {
        bgcolor = Colors.teal;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextButton(
            onPressed: () {
              svetter();
            },
            child: Text('Change Color'),
            style: TextButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 249, 248, 248)),
          ),
        ]),
      ),
    );
  }
}
