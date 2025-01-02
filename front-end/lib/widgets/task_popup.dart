import 'package:flutter/material.dart';

class TaskPopup extends StatelessWidget {
  final Map<String, dynamic> task;

  TaskPopup({required this.task});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(task['name']),
          Text(task['type'], style: const TextStyle(color: Colors.grey)),
        ],
      ),
      content: Text(task['description']),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Close'),
        ),
      ],
    );
  }
}
