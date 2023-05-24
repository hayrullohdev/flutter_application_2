import 'package:flutter/material.dart';

class If_ElsePage extends StatefulWidget {
  const If_ElsePage({super.key});

  @override
  State<If_ElsePage> createState() => _If_ElsePageState();
}

class _If_ElsePageState extends State<If_ElsePage> {
  int age = 8;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: age >= 7
            ? Container(
                height: 100,
                width: 100,
                color: Colors.yellow,
              )
            : Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
      ),
    );
  }
}
