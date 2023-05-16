import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Pages2 extends StatefulWidget {
  const Pages2({super.key});

  @override
  State<Pages2> createState() => _Pages2State();
}

class _Pages2State extends State<Pages2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Center(
          child: ElevatedButton(
            onPressed: () {},
            child: Text("Pages 2"),
          ),
        ),
      ),
    );
  }
}