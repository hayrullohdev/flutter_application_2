import 'package:flutter/material.dart';

import 'package:flutter_application_2/show_bottom_sheet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tasbeh',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: const ShowModolBottomsettPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
