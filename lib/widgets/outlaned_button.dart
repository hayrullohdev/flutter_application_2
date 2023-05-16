import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Outlaned_button extends StatelessWidget {
  final Color outlaned_button;
  const Outlaned_button({
    super.key,
    required this.outlaned_button,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          print("");
        },
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: outlaned_button,
              border: Border.all(
                color: const Color.fromARGB(255, 219, 219, 219),
              )),
          height: 30,
          width: 150,
          child: const Center(
            child: Text(
              "OutlanedButton",
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
