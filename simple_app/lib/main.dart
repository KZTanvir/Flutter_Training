import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Simple Application"),

        ),
        backgroundColor: Colors.white,
        body: Center(
          child: Container(
            child: Text(
              'my app',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            height: 200,
            width: 200,
            alignment: Alignment.center,
            //transform: Matrix4.rotationZ(50),
            decoration: BoxDecoration(
              color: Colors.orange,
              border: Border(
                top: BorderSide(
                  color: Colors.black,
                  width: 2,
                ),
                bottom: BorderSide(
                  color: Colors.green,
                  width: 2
                ),
                left: BorderSide(
                  color: Colors.red,
                  width: 2
                ),
                right: BorderSide(
                  color: Colors.blue,
                  width: 2
                ),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 10
                )
              ]
            ),
          )
        ),
      )
    )
  );
}
