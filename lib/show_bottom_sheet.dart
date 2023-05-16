import 'dart:io';

import 'package:flutter/material.dart';

class ShowModolBottomsettPage extends StatefulWidget {
  const ShowModolBottomsettPage({super.key});

  @override
  State<ShowModolBottomsettPage> createState() =>
      _ShowModolBottomsettPageState();
}

class _ShowModolBottomsettPageState extends State<ShowModolBottomsettPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                isDismissible: false,
                context: context,
                elevation: 100,
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                builder: (BuildContext context) {
                  return SizedBox(
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Ilovadan chiqasizmi?",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("Yo'q"),
                            ),
                            TextButton(
                              onPressed: () {
                                exit(0);
                              },
                              child: const Text("Ha"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            child: const Text("Show modl BottomShet"),
          ),
        ),
      ),
    );
  }
}
