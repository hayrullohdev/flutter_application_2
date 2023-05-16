import 'package:flutter/material.dart';

class GridPage extends StatefulWidget {
  const GridPage({super.key});

  @override
  State<GridPage> createState() => _GridPageState();
}

class _GridPageState extends State<GridPage> {
  List<Map> list = [
    {
      "name": "Home",
    },
    {
      "name": "Rasm",
    },
    {
      "name": "Qo'shish",
    },
    {
      "name": "Olibtashash",
    },
  ];
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Dashboard",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 72, 24, 161),
      ),
      body: Container(
        color: const Color.fromARGB(255, 4, 24, 58),
        child: Column(
          children: [
            SwitchListTile(
              title: const Text(
                "Grid/List",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              value: isChecked,
              onChanged: (value) {
                setState(
                  () {
                    isChecked = value;
                  },
                );
              },
            ),
          const  Text(
              "It's Dshboard like",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
            if (isChecked == true) ...[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                    ),
                    itemCount: list.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: Container(
                          color: const Color.fromARGB(255, 72, 24, 161),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                              const  Icon(
                                  Icons.home,
                                  size: 60,
                                  color: Colors.white,
                                ),
                                Text(
                                  list[index]["name"],
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Column(
                children: [
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.youtube_searched_for,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Srach",
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.remove_circle,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Remove",
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ] else ...[
            ],
          ],
        ),
      ),
    );
  }
}
