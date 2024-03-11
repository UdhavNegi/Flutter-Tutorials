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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
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
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text('Hello'),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          reverse: true,
          children: const [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('One', style : TextStyle(fontSize: 21, fontWeight: FontWeight.w500)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Two', style : TextStyle(fontSize: 21, fontWeight: FontWeight.w500)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Three', style : TextStyle(fontSize: 21, fontWeight: FontWeight.w500)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Four', style : TextStyle(fontSize: 21, fontWeight: FontWeight.w500)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Five', style : TextStyle(fontSize: 21, fontWeight: FontWeight.w500)),
            ),
            ],
        ));
  }
}
