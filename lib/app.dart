import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            tooltip: 'Notification',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Notification clicked')));
            },
            icon: const Icon(Icons.notification_add),
          ),
          IconButton(
            tooltip: 'Close',
            onPressed: () {
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text('Closed')));
            },
            icon: const Icon(Icons.close),
          )
        ],
        title: const Padding(
          padding: EdgeInsets.only(left: 30),
          child: Text('AppBar Demo'),
        ),
      ),
      body: const Center(
        child: Text(
          'This is the home page',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
