import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Flutter App"),
          ),
          body: Column(
            children: [
              Container(
                width: 300,
                height: 200,
                color: Colors.red,

              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 300,
                height: 200,
                color: Colors.red,
                
              ),
            ],
          ),
        ),
      ),
    );
  }
}