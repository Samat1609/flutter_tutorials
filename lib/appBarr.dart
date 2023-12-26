import 'package:flutter/material.dart';

class AppBarr extends StatefulWidget {
  const AppBarr({super.key});

  @override
  State<AppBarr> createState() => _AppBarrState();
}

class _AppBarrState extends State<AppBarr> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('Notification clickeddddddd')));
              },
              icon: const Icon(Icons.notification_add),
              tooltip: 'Show snackBar',
            ),
            IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Samat is the best')));
              },
              icon: const Icon(Icons.close),
              tooltip: 'Close',
            ),
          ],
          title: const Text(
            'AppBar Demo',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        body: const Center(
          child: Text(
            'This is the home page',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
