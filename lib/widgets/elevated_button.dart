import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Elevated_button extends StatelessWidget {
  final Color elevated_button;

  const Elevated_button({
    super.key,
    required this.elevated_button,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          print("");
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            height: 35,
            width: 150,
            color: elevated_button,
            child: const Center(
              child: Text(
                "ElevatedButton",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
