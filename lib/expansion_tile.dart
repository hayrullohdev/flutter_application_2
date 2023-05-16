import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';


class ExpationPage extends StatefulWidget {
  const ExpationPage({super.key});

  @override
  State<ExpationPage> createState() => _ExpationPageState();
}

class _ExpationPageState extends State<ExpationPage> {
  List<Map> list = [
    {
      "image": "assets/flask.png",
      "name": "UNLOUCK 90 FPS",
    },
    {
      "image": "assets/laptop.png",
      "name": "iPad View - 90",
    },
    {
      "image": "assets/aim.png",
      "name": "CONFIG AIM",
    },
    {
      "image": "assets/car.png",
      "name": "CAR FASTER",
    },
    {
      "image": "assets/map.png",
      "name": "GRASS All MAPS",
    },
    {
      "image": "assets/sound.png",
      "name": "& ULTRA SOUND",
    },
  ];
  final Color _white = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(23), child: appBar(white: _white)),
      ),
      backgroundColor: const Color(0xff151e27),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //
           const SizedBox(
              height: 10,
            ),
            Text(
              "Let's make your game more fun in some steps",
              style: TextStyle(
                color: _white,
                fontSize: 15,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GridView.builder(
              itemCount: list.length,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15.0,
                mainAxisSpacing: 15.0,
              ),
              itemBuilder: (context, index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    color: const Color(0xff212838),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Image.asset(
                            list[index]["image"],
                            width: 70,
                            height: 70,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            list[index]["name"],
                            style: TextStyle(
                              color: _white,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xff212838),
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(
                        15,
                      ),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/dds.png",
                          width: 50,
                          height: 50,
                        ),
                      const  SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Edit UserCostom File",
                          style: TextStyle(
                            color: _white,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                 const SizedBox(
                    height: 15,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color:const Color(0xff212838),
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(
                        15,
                      ),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/user.png",
                          width: 50,
                          height: 50,
                        ),
                      const  SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Edit UserCostom File",
                          style: TextStyle(
                            color: _white,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class appBar extends StatelessWidget {
  const appBar({
    super.key,
    required Color white,
  }) : _white = white;

  final Color _white;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: const BoxDecoration(
        color: Color(0xff212838),
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15)),
      ),
      child: Row(
        children: [
          Icon(
            Icons.menu,
            color: _white,
            size: 35,
          ),
          const Spacer(),
          Text(
            "Dashboard",
            style: TextStyle(color: _white, fontSize: 28),
          ),
          const Spacer(),
          Icon(
            Icons.favorite,
            color: _white,
            size: 35,
          ),
        ],
      ),
    );
  }
}
