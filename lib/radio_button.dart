import 'package:flutter/material.dart';

class RadioButtonPage extends StatefulWidget {
  const RadioButtonPage({super.key});

  @override
  State<RadioButtonPage> createState() => _RadioButtonPageState();
}

class _RadioButtonPageState extends State<RadioButtonPage> {
  List<String> radioList = ["Madrid", "Toshkent", "Dubay"];

  String? selectedRadio;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("O'zbekistonning poytaxti qayer?"),
            Column(
              children: radioList.map((item) {
                return Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: RadioListTile(
                          activeColor: Colors.red,
                          title: Text(item),
                          value: item,
                          groupValue: selectedRadio,
                          onChanged: (value) {
                            setState(
                              () {
                                selectedRadio = value;
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
