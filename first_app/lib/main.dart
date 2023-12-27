import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.deepPurple, Colors.deepOrange],
            ),
          ),
          child: const Center(
            child: Text("Hello World!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                )),
          ),
        ),
      ),
    ),
  );
}
