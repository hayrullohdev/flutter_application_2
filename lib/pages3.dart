import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Pages3 extends StatefulWidget {
  const Pages3({super.key});

  @override
  State<Pages3> createState() => _Pages3State();
}

class _Pages3State extends State<Pages3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(
          child: ElevatedButton(
            onPressed: () {},
            child: Text("Pages 3"),
          ),
        ),
      ),
    );
  }
}