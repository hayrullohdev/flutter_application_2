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
                    height: 200,
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "Ilovadan chiqasizmi?",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                "Ilovadan butunlay chiqib ketish yoki qolish uchun bosing.",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
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
