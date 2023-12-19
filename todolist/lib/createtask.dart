import 'package:flutter/material.dart';

class CreateTask extends StatelessWidget {
  const CreateTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Create new task"),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            InputElement("Main task name", "ex. UI/UX App Design"),
            InputElement("Due date", "April 29, 2023 12:30 AM", isDate: true),
            InputElement("Description",
                "First i have to animate the logo and later prototyping my design",
                isDesc: true),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CreateTask()));
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.red,
                ),
                margin: EdgeInsets.only(bottom: 50),
                child: Text(
                  'Add Task',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget InputElement(String label, String text,
      {isDesc = false, isDate = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
              color: const Color.fromARGB(255, 255, 85, 7), fontSize: 20),
        ),
        Container(
            margin: EdgeInsets.only(bottom: 20),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(.4),
                      blurRadius: 5,
                      spreadRadius: 3),
                ]),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    maxLines: isDesc ? 4 : 1,
                    decoration: InputDecoration(
                        hintText: text, border: InputBorder.none),
                  ),
                ),
                isDate
                    ? Icon(
                        Icons.date_range,
                        color: const Color.fromARGB(255, 255, 90, 7),
                      )
                    : Container()
              ],
            )),
      ],
    );
  }
}
