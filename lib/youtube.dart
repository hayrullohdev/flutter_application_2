import 'package:flutter/material.dart';

class YoutubePage extends StatefulWidget {
  const YoutubePage({super.key});

  @override
  State<YoutubePage> createState() => _YoutubePageState();
}

class _YoutubePageState extends State<YoutubePage> {
  List<Map> list = [
    {
      "rasm": "asset/youtube.webp",
      "leadingrasm": "asset/aim.png",
      "title": """
Responsiw   Website Template with a 
Dynamic NavBar for Seamless...
""",
      "subtitle": """
Laurence Svekis
26 views * 17 hours ago
""",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    list[index]["rasm"],
                  ),
                ),
                Row(
                  children: [
                    ClipOval(
                      child: Image.asset(
                        list[index]["leadingrasm"],
                        height: 40,
                        width: 40,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      list[index]["title"],
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 50,
                    ),
                    Text(
                      list[index]["subtitle"],
                      style: const TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
// ListTile(
//             leading: Image.asset(list[index]["leadingrasm"]),
//             title: Row(
//               children: [
//                 Text(list[index]["title"]),
//               ],
//             ),
//             subtitle: Text(list[index]["subtitle"]),
//           );