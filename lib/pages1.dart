import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';


class Pages1 extends StatefulWidget {
  const Pages1({super.key});

  @override
  State<Pages1> createState() => _Pages1State();
}

class _Pages1State extends State<Pages1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: Text("Pages 1"),
        ),
      ),
    );
  }
}
