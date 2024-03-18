import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var arrIndex = [
    1, 2, 3, 4, 5, 6, 7, 8, 9, 10
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("3D List"),
      ),
      body: Center(
        child: ListWheelScrollView(
          itemExtent: 100,
          children: arrIndex.map((value) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child : Center(child: Text('$value', style : TextStyle(fontSize: 21, color : Colors.white))),
              decoration: BoxDecoration(
              color : Colors.blue, 
              borderRadius: BorderRadius.circular(10),

              ),
              width : double.infinity, 
            ),
          )).toList(), 
          
        ),
      )
    );
  }
}
 