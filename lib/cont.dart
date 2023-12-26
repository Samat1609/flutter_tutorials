import 'package:flutter/material.dart';

class Cont extends StatelessWidget {
  const Cont({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.all(5),
            width: double.infinity,
            height: 96,
            color: ThemeData().primaryColor,
            child: const Center(
              child: Text(
                'I am Container',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
