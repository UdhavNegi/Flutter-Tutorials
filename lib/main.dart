import 'package:first_app/ui_helper/util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        // useMaterial3: true,
        primarySwatch: Colors.blue,
        textTheme: TextTheme( 
          headline1: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
          headline2: TextStyle(fontSize: 21, fontWeight: FontWeight.bold, color : Colors.lightGreen),
          subtitle1: TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
          subtitle2: TextStyle(fontSize: 11, fontWeight: FontWeight.w500, color : Colors.orange)
        )
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

// This is the homepage for our flutter app
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var arrNames = ['Raman', 'Ramanujan', 'Rajesh', "James", 'John', 'Rahim', 'Ram', ];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('Hello'),
        ),
        body: Center(
          child: Card(
            elevation : 5,
            shadowColor: Colors.orange,
            child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Hello world', style : TextStyle(fontSize: 21)),
          )),
        )
        );
  }
}