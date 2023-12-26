import 'package:flutter/material.dart';

class MaterialAppp extends StatelessWidget {
  const MaterialAppp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeData().colorScheme.secondary.withOpacity(0.5),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(90),
        child: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: const Padding(
              padding: EdgeInsets.only(top: 35), child: Text('MaterialApp')),
        ),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            'A convenience widget that wraps a number of widgets that are commonly required for applications implementing Material Design',
            style: TextStyle(height: 1.5, fontSize: 14),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
