import 'package:flutter/material.dart';

class StackPage extends StatefulWidget {
  const StackPage({super.key});

  @override
  State<StackPage> createState() => _StackPageState();
}

class _StackPageState extends State<StackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tasbeeh image"),
        backgroundColor: Colors.amberAccent,
      ),
      body: Container(
        color: const Color.fromARGB(255, 9, 35, 57),
        child: Stack(
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  color: const Color.fromARGB(255, 65, 63, 63),
                  child: Image.network(
                    "https://img.icons8.com/external-smashingstocks-circular-smashing-stocks/512/external-tasbih-islamic-smashingstocks-circular-smashing-stocks.png",
                    width: 90,
                    height: 90,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
