import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

/// Everything in Flutter is a widget

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        /// App Bar
        appBar: AppBar(
          title: Text('Flutter Training'),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          centerTitle: true,
        ),

        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: .center,
            // mainAxisAlignment: .spaceBetween,
            children: [
              Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJD28KKVU_aMO-u2237bJMQgXmohiH1GDb8zh21torfX9II9fKTnnbjhx0&s=10',
                height: 150,
              ),
          
              SizedBox(height: 20),
          
              Text(
                'jkfjhdj',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: .bold,
                  color: Colors.blue,
                ),
              ),
          
              SizedBox(height: 20),
          
              Container(
                padding: .all(16),
                //color: Colors.red,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: .circular(16),
                  border: .all(color: Colors.blue, width: 4),
                ),
                child: Text(
                  'hjdsf jhhhhf uj ijfdoi i jdoi d iogfj hidf uijiod ujh djks dfdjffg ijod ioojdoi jkio dfji od',
                  style: TextStyle(fontSize: 16, height: 1.5),
                ),
              ),
          
              SizedBox(height: 20),
          
              Row(
                mainAxisAlignment: .spaceAround,
                children: [
                  // child 1
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow),
                      SizedBox(width: 10),
                      Text('Rate 4.5', style: TextStyle(fontSize: 16)),
                    ],
                  ),
          
                  // child 2
                  Row(
                    children: [
                      Icon(Icons.timer, color: Colors.blue),
                      SizedBox(width: 10),
                      Text('60 hour', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ],
              ),
          
              SizedBox(height: 20),
          
              Align(
                alignment: .centerStart,
                child: Text(
                  'Skills :',
                  style: TextStyle(fontSize: 20, fontWeight: .bold),
                ),
              ),
          
          
              SizedBox(height: 20),
          
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  Chip(label: Text('Dart')),
                  Chip(label: Text('Flutter Widgets')),
                  Chip(label: Text('UI Design')),
                  Chip(label: Text('State Management')),
                  Chip(label: Text('API Integration')),
                  Chip(label: Text('Firebase')),
                  Chip(label: Text('Firebase')),
                  Chip(label: Text('Firebase')),
                  Chip(label: Text('Firebase')),
                  Chip(label: Text('Firebase')),
                  Chip(label: Text('Firebase')),
                  Chip(label: Text('Firebase')),
                  Chip(label: Text('Firebase')),
                  Chip(label: Text('Firebase')),
                  Chip(label: Text('Firebase')),
                  Chip(label: Text('Firebase')),
                  Chip(label: Text('Firebase')),
                  Chip(label: Text('Firebase')),
                  Chip(label: Text('Firebase')),
                  Chip(label: Text('Firebase')),
                  Chip(label: Text('Firebase')),
                  Chip(label: Text('Firebase')),
                  Chip(label: Text('Firebase')),
                  Chip(label: Text('Firebase')),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
