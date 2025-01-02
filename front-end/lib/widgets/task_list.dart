import 'package:flutter/material.dart';
import 'task_popup.dart';

class TaskList extends StatelessWidget {
  final List<Map<String, dynamic>> tasks;

  TaskList({required this.tasks});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        final task = tasks[index];
        return ListTile(
          title: Text(task['name']),
          subtitle: Text(task['deadline']),
          onTap: () {
            showDialog(
              context: context,
              builder: (_) => TaskPopup(task: task),
            );
          },
        );
      },
    );
  }
}
