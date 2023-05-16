import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  int count = 0;
  int hide_count = 0;
  String word = "Subhanalloh";

  double? _scale;
  AnimationController? _controller;
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 500,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _controller!.dispose();
  }

  void _tapDown(TapDownDetails details) {
    _controller!.forward();
  }

  void _tapUp(TapUpDetails details) {
    _controller!.reverse();
  }

  @override
  Widget build(BuildContext context) {
    _scale = 1 - _controller!.value;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tasbeh"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "$count/33",
              style: const TextStyle(fontSize: 70, fontWeight: FontWeight.bold),
            ),
            Text(
              word,
              style: const TextStyle(fontSize: 40),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTapDown: _tapDown,
              onTapUp: _tapUp,
              child: Transform.scale(
                scale: _scale,
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 2,
                        color: Theme.of(context).primaryColor,
                      )),
                  child: const Center(
                    child: Text("BOSING",
                        style: TextStyle(
                          fontSize: 25,
                        )),
                  ),
                ),
              ),
              onTap: () {
                setState(() {
                  count++;
                  hide_count++;
                  if (count == 34) {
                    count = 1;
                  }
                  if (hide_count == 100) {
                    hide_count = 1;
                  }
                  if (hide_count < 34) {
                    word = "Subhanalloh";
                  }
                  if (hide_count > 33) {
                    word = "Alhamdulillah";
                  }
                  if (hide_count > 66) {
                    word = "Allohu akbar";
                  }
                });
                print(hide_count);
              },
            )
          ],
        ),
      ),
    );
  }
}