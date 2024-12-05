import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  // Function to check if the password is strong enough
  // Function to check if the password is strong enough
  bool isPasswordStrong(String password) {
    // Ensure the password has at least 6 characters and includes a number, an uppercase letter, and a special character.
    return password.length >= 6 &&
          password.contains(RegExp(r'[A-Z]')) && // At least one uppercase letter
          password.contains(RegExp(r'[0-9]')) && // At least one number
          password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]')); // At least one special character
  }

  Future<void> signUpAndCreateUser(String email, String password, String name) async {
    try {
      // Check if the password is strong
      if (!isPasswordStrong(password)) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Password should be at least 6 characters long. It should include at least one number, one uppercase letter, and one special character.')),
        );
        return;
      }

      // Create a user in Firebase Authentication
      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Add user data to Firestore
      await FirebaseFirestore.instance.collection('Users').doc(userCredential.user?.uid).set({
        'name': name,
        'email': email,
        'createdAt': DateTime.now(),
      });

      log("User signed up and data added to Firestore.");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Sign up successful! Welcome, $name')),
      );

      // Optionally, navigate to another screen after sign up
      Navigator.pop(context); // Navigate back to login screen or home page

    } catch (e) {
      log("Error: $e");

      // Handle Firebase specific errors
      String errorMessage = "Sign up failed. Please try again.";
      if (e is FirebaseAuthException) {
        switch (e.code) {
          case 'weak-password':
            errorMessage = "The password is too weak. Please choose a stronger password.";
            break;
          case 'email-already-in-use':
            errorMessage = "This email is already in use. Please use another email.";
            break;
          case 'invalid-email':
            errorMessage = "The email format is invalid. Please enter a valid email.";
            break;
          default:
            errorMessage = "An unexpected error occurred. Please try again.";
        }
      }

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(errorMessage)),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Signup Screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Name input
              TextField(
                controller: _nameController,
                decoration: const InputDecoration(labelText: 'Name'),
                keyboardType: TextInputType.text,
              ),
              const SizedBox(height: 16),

              // Email input
              TextField(
                controller: _emailController,
                decoration: const InputDecoration(labelText: 'Email'),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16),

              // Password input
              TextField(
                controller: _passwordController,
                decoration: const InputDecoration(labelText: 'Password'),
                obscureText: true, // This hides the password
                keyboardType: TextInputType.visiblePassword,
              ),
              const SizedBox(height: 16),

              // Sign up button
              ElevatedButton(
                onPressed: () {
                  String email = _emailController.text;
                  String password = _passwordController.text;
                  String name = _nameController.text;

                  if (email.isNotEmpty && password.isNotEmpty && name.isNotEmpty) {
                    signUpAndCreateUser(email, password, name);
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Please fill in all fields')),
                    );
                  }
                },
                child: const Text("Sign Up"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
