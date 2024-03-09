import 'package:flutter/material.dart';

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
        body: Center(
          child: InkWell(
              onTap : (){print('Tapped on container');},
              onLongPress : (){print('Long Pressed on container');},
              onDoubleTap : (){print('Double Tapped on container');},
            child: Container(
              width: 200,
              height: 200,
              color: Colors.amber,
              child: Center(child: InkWell(
                onTap: (){
                  print("Text widget Tapped!");
                },
                child: Text('Click Here', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w700),))),
              
            ),
          ),
        )
    );
  }
}
