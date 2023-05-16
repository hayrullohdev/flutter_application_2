import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/widgets/elevated_button.dart';
import 'package:flutter_application_2/widgets/icon_button.dart';
import 'package:flutter_application_2/widgets/outlaned_button.dart';

class VazifaPage extends StatefulWidget {
  const VazifaPage({super.key});

  @override
  State<VazifaPage> createState() => _VazifaPageState();
}

class _VazifaPageState extends State<VazifaPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Elevated_button(
            elevated_button: Colors.black,
          ),
          SizedBox(
            height: 10,
          ),
          Outlaned_button(
            outlaned_button: Colors.grey,
          ),
          icon_Button(
            Icon_button: Colors.black,
          ),
        ],
      ),
    );
  }
}
