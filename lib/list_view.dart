import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  List list = ["Olma", "Anor", "Uzum", "Shaftoli"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ListView.builder(itemBuilder: (context, index) {
      return Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(list[index]),
        ),
      );
    }));
  }
}
