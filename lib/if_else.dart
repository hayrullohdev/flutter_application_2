import 'package:flutter/material.dart';

class If_ElsePage extends StatefulWidget {
  const If_ElsePage({super.key});

  @override
  State<If_ElsePage> createState() => _If_ElsePageState();
}

class _If_ElsePageState extends State<If_ElsePage> {
  var olcham = 500;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: olcham <= MediaQuery.of(context).size.width
          ? Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.green,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.red,
                  ),
                ),
              ],
            )
          : Container(
              color: Colors.yellow,
            ),
    );
  }
}
