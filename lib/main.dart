import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

/// Everything in Flutter is a widget

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Learning'),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          leading: Icon(Icons.arrow_back),
          centerTitle: true,
        ),

        body: Center(
          child: Stack(
            alignment: .center,
            children: [
              Container(width: 200, height: 200, color: Colors.blue),
              Container(width: 150, height: 150, color: Colors.red),
              Container(width: 100, height: 100, color: Colors.yellow),
              Text('Stack', style: TextStyle(fontSize: 24, fontWeight: .bold)),
            ],
          ),
        ),
      ),
    );
  }
}

// class CounterScreen extends StatefulWidget {
//   const CounterScreen({super.key});
//
//   @override
//   State<CounterScreen> createState() => _CounterScreenState();
// }
//
// class _CounterScreenState extends State<CounterScreen> {
//   int counter = 0;
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       body: Center(
//         child: Text('The Number is : $counter', style: TextStyle(fontSize: 30)),
//       ),
//
//
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.add),
//         onPressed: () {
//           setState(() {
//             counter++;
//           });
//         },
//       ),
//     );
//   }
// }
