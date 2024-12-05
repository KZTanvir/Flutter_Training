import 'package:firebase_auth_app/auth/login_screen.dart';
import 'package:firebase_auth_app/auth/signup_screen.dart';
import 'package:firebase_auth_app/screens/userlist_screen/user_list_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyArMTEqXWB0Epn1SXCmmNpjSmZWuExqlTY',
      appId: '1:244427688905:android:9a71d68a11533573c03618',
      messagingSenderId: '683311085674',
      projectId: 'bdixauth',
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Firebase Authentication App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/', // Set initial route to login screen
      routes: {
        '/': (context) => const LoginScreen(), // Login Screen
        '/signup': (context) => const SignupScreen(), // Signup Screen
        '/users': (context) => UsersListView(), // Users List View
      },
    );
  }
}
