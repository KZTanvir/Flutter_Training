import 'package:flutter/material.dart';
import 'package:class4_assesment4/ui.dart';
import 'package:class4_assesment4/counter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile Card',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ProfileCard(),
      routes: {
        '/counter': (context) => const CounterScreen(),
      },
    );
  }
}
