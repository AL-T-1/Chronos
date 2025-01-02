import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('About')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('About Chronos ToDo App', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 10),
            const Text(
              'Chronos task manager is a powerful tool for organizing and managing your tasks effectively. It allows you to sync tasks with the server and keep track of deadlines with ease.',
            ),
            const SizedBox(height: 20),
            Text('Copyright © 2025', style: Theme.of(context).textTheme.bodySmall),
            Text('Developed by ACUBE', style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
      ),
    );
  }
}
