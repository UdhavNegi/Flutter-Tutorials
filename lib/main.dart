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
    var arrNames = ['Raman', 'Ramanujan', 'Rajesh', "James", 'John', 'Rahim', 'Ram', ];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text('Hellos'),
        ),
        body: Center(
            child: CircleAvatar(
              child : Column(
                children: [
                  Container(
                    width : 40,
                    height : 40,
                    child: Image.asset('assets/images/kid1.jpg')
                    ),
                  Text('Name')
                  ]
                
              ),
              // backgroundImage: AssetImage('assets/images/kid1.jpg'),
              // backgroundColor : Colors.green,
              // radius : 100,
              // minRadius: 50,
              maxRadius: 60,
              ),
          ),
        );
  }
}