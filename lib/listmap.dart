import 'package:flutter/material.dart';

class LearnPage extends StatefulWidget {
  const LearnPage({super.key});

  @override
  State<LearnPage> createState() => _LearnPageState();
}

class _LearnPageState extends State<LearnPage> {
  List<Map>? list;
  @override
  void initState() {
    super.initState();
    onData();
  }

  onData() {
    list = [
      {
        "name": "Ayiq",
        "turi": "yovvoyi",
        "rasm":
            "https://i.mycdn.me/i?r=AzEPZsRbOZEKgBhR0XGMT1RkAAhAL9qt7sXmbOMcaNBbU6aKTM5SRkZCeTgDn6uOyic"
      },
      {
        "name": "Mushuk",
        "turi": "Uy hayvoni",
        "rasm":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRc0bT3iyZ4S8-dCact-kfc4CrDuTetH1QjJA&usqp=CAU"
      },
      {
        "name": "Gipart",
        "turi": "yovvoyi",
        "rasm":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDFZrA6w7g5oNYKtokZ-y2QlsPWnVU9Vq_Qw&usqp=CAU"
      },
      {
        "name": "Sher",
        "turi": "yovvoyi",
        "rasm":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4dBlUlGx2llyKxy2aO9C4hijY0gV3ItiRLwxtwpPUyg&s"
      },
      {
        "name": "Mol",
        "turi": "Uy hayvoni",
        "rasm":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDwBlVgCoD-Le1XuwpOJGlhspTp9seO9iCyg&usqp=CAU"
      },
    ];
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hayvonlar"),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  onData();
                });
              },
              icon: const Icon(Icons.refresh))
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(list![index]['rasm']),
                ),
                title: Text(list![index]["name"]),
                subtitle: Text(list![index]["turi"]),
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => AppPage(),
                  //   ),
                  // );
                },
              ),
            ),
          );
        },
        itemCount: list!.length,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            OutlinedButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => AppPage()),
                  // );
                },
                child: const Text("Keyingi")),
          ],
        ),
      ),
    );
  }
}
