import 'package:flutter/material.dart';

// Main entry point of the application
void main() {
  runApp(const MyApp());
}

// The main widget of the application
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter App',
      home: const CounterScreen(),
    );
  }
}

// The screen that contains the counter logic
class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _counter = 0; // Current counter value
  int _colorIndex = 0; // Index to change background color

  // List of colors to cycle through
  final List<Color> _colors = [
    Colors.blue,
    Colors.green,
    Colors.red,
    Colors.orange,
    Colors.purple,
  ];

  // Increment the counter and change color
  void _incrementCounter() {
    setState(() {
      _counter++; // Increase the counter
      _colorIndex = (_colorIndex + 1) % _colors.length; // Cycle through colors
    });
  }

  // Decrement the counter and change color
  void _decrementCounter() {
    setState(() {
      _counter--; // Decrease the counter
      if (_counter <= 0) {
        _colorIndex = 0; // Reset color index
      }
      _colorIndex = (_colorIndex + 1) % _colors.length; // Cycle through colors
    });
  }

  // Reset the counter and color
  void _resetCounter() {
    setState(() {
      _counter = 0; // Reset the counter
      _colorIndex = 0; // Reset color index
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
        backgroundColor:
            _colors[_colorIndex], // App bar color changes with counter
      ),
      body: Container(
        color: _colors[_colorIndex], // Background color changes with counter
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Center the content
            children: [
              const Text(
                'You have pushed the button this many times:',
                style: TextStyle(fontSize: 20), // Text size
              ),
              Text(
                '$_counter', // Show the current counter value
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 20), // Space between text and buttons
              // Row for buttons
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Center the buttons
                children: [
                  // Increment button
                  FloatingActionButton(
                    heroTag: 'increment', // Unique tag for increment button
                    onPressed: _incrementCounter, // Call increment method
                    tooltip: 'Increment',
                    backgroundColor: Colors.white, // Button background color
                    foregroundColor: _colors[_colorIndex], // Icon color
                    child: const Icon(Icons.add), // Plus icon
                  ),
                  const SizedBox(width: 20), // Space between buttons
                  // Decrement button
                  FloatingActionButton(
                    heroTag: 'decrement', // Unique tag for decrement button
                    onPressed: _decrementCounter, // Call decrement method
                    tooltip: 'Decrement',
                    backgroundColor: Colors.white, // Button background color
                    foregroundColor: _colors[_colorIndex], // Icon color
                    child: const Icon(Icons.remove), // Minus icon
                  ),
                  const SizedBox(width: 20), // Space between buttons
                  // Reset button
                  FloatingActionButton(
                    heroTag: 'reset', // Unique tag for reset button
                    onPressed: _resetCounter, // Call reset method
                    tooltip: 'Reset',
                    backgroundColor: Colors.white, // Button background color
                    foregroundColor: _colors[_colorIndex], // Icon color
                    child: const Icon(Icons.refresh), // Refresh icon
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
