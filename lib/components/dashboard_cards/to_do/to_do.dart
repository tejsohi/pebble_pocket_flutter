import 'package:flutter/material.dart';

class ToDo extends StatefulWidget {
  const ToDo({super.key});

  @override
  State<ToDo> createState() => _ToDoState();
}

class _ToDoState extends State<ToDo> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).cardColor,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Icon(Icons.assignment_turned_in),
            Center(
              child: Text('Things you need to do'),
            ),
            SizedBox(height: 20.0),
            ExpansionTile(
              title: Text('So what happens here?'),
              subtitle: Text('Tap for more information'),
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: ListTile(
                    title: Text(
                        'In this "Need to do" section you will find details of upcoming events that you should be aware of. For example submission deadlines and tasks will appear here.'),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
