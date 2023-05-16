import 'package:flutter/material.dart';

class TextFielPage extends StatefulWidget {
  const TextFielPage({super.key});

  @override
  State<TextFielPage> createState() => _TextPageState();
}

class _TextPageState extends State<TextFielPage> {
  TextEditingController textEditingController = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hayvonlar"),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {});
              },
              icon: const Icon(Icons.refresh),)
        ],
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                controller: textEditingController,
                decoration: InputDecoration(
                    hintText: "Matn kiriting", label: Text("Label")),
              ),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(textEditingController.text)));
                },
                child: Text("Bosing"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
