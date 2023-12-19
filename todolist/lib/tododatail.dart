import 'package:flutter/material.dart';

class TodoDetail extends StatefulWidget {
  const TodoDetail({super.key});

  @override
  State<TodoDetail> createState() => _TodoDetailState();
}

class _TodoDetailState extends State<TodoDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Todo Detail"),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            detail("title", "UI/UX App Design"),
            detail("Describtion",
                "First i have to animate the logo and prototyping my dasign"),
            detail("Deadline", "April,29,2023"),
          ],
        ),
      ),
    );
  }

  Widget detail(String lable, String text, {isDesc = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          lable,
          style: TextStyle(
              color: const Color.fromARGB(255, 255, 85, 7), fontSize: 20),
        ),
        Container(
            width: double.infinity,
            margin: EdgeInsets.only(bottom: 20),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 225, 225, 225),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Text(text)),
      ],
    );
  }
}
