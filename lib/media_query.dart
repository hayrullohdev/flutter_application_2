import 'package:flutter/material.dart';

class Media_queryPage extends StatefulWidget {
  const Media_queryPage({super.key});

  @override
  State<Media_queryPage> createState() => _Media_queryPageState();
}

class _Media_queryPageState extends State<Media_queryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
            "${MediaQuery.of(context).size.width.toString()} x ${MediaQuery.of(context).size.height.toString()}"),
      ),
    );
  }
}
