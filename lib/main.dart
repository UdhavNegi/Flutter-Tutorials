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
  bool isFirst = true;
  var myOpacity = 1.0;
  // var isVisisble = false;

  @override
  void initState()
  {
    super.initState();
  }

  void reload()
  {
    setState(() {
      isFirst = !isFirst;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Foo Animation"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedCrossFade(
              duration: Duration(
                seconds : 4,
              ),
              firstChild: Container(
                width : 200, 
                height : 200, 
                color : Colors.grey.shade400
              ),
            
              secondChild: Container(
                width : 200, 
                height : 200, 
                color : Colors.red.shade400
              ),

              // sizeCurve: Curves.fastOutSlowIn,
              firstCurve: Curves.easeInOut,
              secondCurve: Curves.bounceInOut,


              crossFadeState: isFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond, 

            
            ),
            ElevatedButton(onPressed: (){
              // isFirst = !isFirst;
              setState(() {
                reload();
              });

            }, child: Text('Show')) 
          ],
        ),
      )
    );
  }
}
 