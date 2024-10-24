import 'package:flutter/material.dart';

class HelloWorld extends StatelessWidget {
  const HelloWorld({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First App'),
      ),
      body: const Center(
        child: Text(
          'Hello, World! This is a Flutter app.', 
          style: TextStyle(
            fontSize: 24,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
