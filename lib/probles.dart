import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';


class ProgressPage extends StatefulWidget {
  const ProgressPage({super.key});

  @override
  State<ProgressPage> createState() => _ProgressPageState();
}

class _ProgressPageState extends State<ProgressPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Progress",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            LinearProgressIndicator(
              color: Colors.black,
              backgroundColor: Colors.amberAccent,
              minHeight: 10,
            ),
            SizedBox(
              height: 20,
            ),
            CircularProgressIndicator(
              color: Color.fromARGB(244, 182, 231, 7),
              backgroundColor: Colors.black,
              strokeWidth: 10,

            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){}, child: 
      Icon(Icons.download),),
    );
  }
}
