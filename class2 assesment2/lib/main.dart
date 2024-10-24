import 'package:flutter/material.dart'; 
import 'hello_world.dart'; // Import the corrected hello_world.dart file

void main() => runApp(const HelloWorldApp());

class HelloWorldApp extends StatelessWidget {
  const HelloWorldApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'First App',
      home: HelloWorld(),
    );
  }
}
