import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  List<Map<String, dynamic>> user = [
    {
      "name": "Susan Lee",
      "design": "lorem ispsum dfl kdlk dfv",
      "date": "12/3/2023"
    },
    {
      "name": "Susan Lee",
      "design": "lorem ispsum dfl kdlk dfv",
      "date": "12/3/2023"
    },
    {
      "name": "Susan Lee",
      "design": "lorem ispsum dfl kdlk dfv",
      "date": "12/3/2023"
    },
    {
      "name": "Susan Lee",
      "design": "lorem ispsum dfl kdlk dfv",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("Basic"),
        actions: [Icon(Icons.search), Icon(Icons.more_vert)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.builder(
            itemCount: user.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  ListTile(
                    title: Text(user[index]["name"]),
                    subtitle: Text(user[index]["design"]),
                  ),
                  Divider()
                ],
              );
            }),
      ),
    );
  }
}
