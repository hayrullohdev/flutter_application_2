import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class icon_Button extends StatelessWidget {
  final Color Icon_button;
  const icon_Button({
    super.key,
    required this.Icon_button,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("");
      },
      child: Container(
        padding: const EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          top: 8.0,
          bottom: 8.0,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(
            color: const Color.fromARGB(255, 219, 219, 219),
          ),
          color: Icon_button,
        ),
        width: 150,
        child: Center(
          child: Row(
            children: const [
              Icon(
                Icons.assignment_ind,
                size: 30,
                color: Colors.white,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "IconButton",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
