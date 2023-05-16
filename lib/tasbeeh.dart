import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class TasbeehPage extends StatefulWidget {
  const TasbeehPage({super.key});

  @override
  State<TasbeehPage> createState() => _TasbeehPageState();
}

class _TasbeehPageState extends State<TasbeehPage>
    with SingleTickerProviderStateMixin {
  int count = 0;
  int hide_count = 0;
  Color becraund = const Color(0xFF01301c);
  Color becraund2 = const Color(0xFF01301c);
  Color colorBorder = Colors.black;
  Color colorBorder2 = Colors.black;
  double? scale;
  void _tapDown(TapDownDetails details) {
    setState(() {
      colorBorder = const Color(0xFF00ea86);
      becraund = const Color(0xFF0AB46B);
    });
  }

  void _tapUp(TapUpDetails details) {
    setState(() {
      colorBorder = Colors.black;
      becraund = const Color(0xFF01301c);
    });
  }

  void _tapDown2(TapDownDetails details) {
    setState(() {
      colorBorder2 = const Color(0xFF00ea86);
      becraund2 = const Color(0xFF0AB46B);
    });
  }

  void _tapUp2(TapUpDetails details) {
    setState(() {
      colorBorder2 = Colors.black;
      becraund2 = const Color(0xFF01301c);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              GestureDetector(
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: const Color(0xff222222),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: 100,
                  height: 40,
                  child: const Center(
                    child: Text(
                      "Reset",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  setState(() {
                    count = 0;
                    hide_count = 0;
                  });
                  print(hide_count);
                },
              ),
              Text(
                "$count",
                style: const TextStyle(
                  fontSize: 100,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 300,
                child: Stack(
                  children: [
                    GestureDetector(
                      onTapDown: _tapDown,
                      onTapUp: _tapUp,
                      child: Container(
                        width: 240,
                        height: 240,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: colorBorder,
                            width: 5,
                          ),
                          color: becraund,
                        ),
                        child: const Center(
                          child: Icon(
                            FontAwesome.chevron_up,
                            size: 100,
                            color: Color(0xFF00ea86),
                          ),
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          count++;
                          hide_count++;
                        });
                        print(hide_count);
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Positioned(
                      top: 200,
                      right: 0,
                      left: 0,
                      child: GestureDetector(
                        onTapDown: _tapDown2,
                        onTapUp: _tapUp2,
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: colorBorder2,
                              width: 5,
                            ),
                            color: becraund2,
                          ),
                          child: const Center(
                            child: Icon(
                              FontAwesome.chevron_down,
                              size: 50,
                              color: Color(0xFF00ea86),
                            ),
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            count--;
                            hide_count--;
                          });
                          print(hide_count);
                          if (hide_count == -1) {
                            hide_count = 1;
                          }
                          if (count == -1) {
                            count = 0;
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              const Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Dasturchi: ",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        "Abdusamadov Xayrulloh",
                        style: TextStyle(color: Color(0xFF00ea86)),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
