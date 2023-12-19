import 'package:flutter/material.dart';
import 'package:todolist/createtask.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Todo List"),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'images/image.jpg',
              height: 300,
            ),
            Text("Task list"),
            task('UI/UX App'),
            task('UI/UX App'),
            task('UI/UX App'),
            task('Football cu'),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CreateTask()));
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.red,
                ),
                margin: EdgeInsets.only(bottom: 50),
                child: Text(
                  'Create Task',
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

  Widget task(String title) {
    return ListTile(
      leading: Text('U'),
      title: Text(title),
      subtitle: Text("Design"),
    );
  }
}
