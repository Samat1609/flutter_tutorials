import 'package:flutter/material.dart';

class Scaffoldd extends StatefulWidget {
  const Scaffoldd({super.key});

  @override
  State<Scaffoldd> createState() => _ScaffolddState();
}

class _ScaffolddState extends State<Scaffoldd> {
  int san = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.all(25.0),
          child: Text(
            'Scaffold',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
      body: Center(
        child: Text(
          'You have pressed the button $san times',
          style: TextStyle(fontSize: 18),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 50,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(
            () {
              san++;
            },
          );
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
