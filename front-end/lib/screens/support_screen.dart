import 'package:flutter/material.dart';

class SupportScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Support')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('For Support, contact us:', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 10),
            const Text('Email: support@chronos.com'),
            const Text('Phone: +1234567890'),
          ],
        ),
      ),
    );
  }
}
