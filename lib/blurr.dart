import 'dart:ui';

import 'package:flutter/material.dart';

class BlurrPage extends StatefulWidget {
  const BlurrPage({super.key});

  @override
  State<BlurrPage> createState() => _BlurrPageState();
}

class _BlurrPageState extends State<BlurrPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: const Color.fromARGB(255, 243, 132, 124),
          ),
          Positioned(
            bottom: 60,
            right: 60,
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 20, 233, 28),
              ),
              height: 230,
              width: 230,
            ),
          ),
          Positioned(
            top: 140,
            bottom: 500,
            left: 100,
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 61, 228, 178),
              ),
              height: 100,
              width: 100,
            ),
          ),
          Center(
            child: ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 10,
                  sigmaY: 10,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 1),
                    color: Colors.black.withOpacity(.1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: 300,
                  height: 400,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
