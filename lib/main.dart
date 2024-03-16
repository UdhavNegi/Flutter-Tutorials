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
  
  var myOpacity = 1.0;
  var isVisisble = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Animated Opacity"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
            opacity: myOpacity,
            duration: Duration(seconds: 4), 
            curve : Curves.elasticIn,
            child : Container(
              width : 200, 
              height : 100,
              color : Colors.blue,
            ), ), 
            ElevatedButton(onPressed: (){
              myOpacity = 0.0;
              setState(() {

                if(isVisisble)
                {
                  myOpacity = 0.0; 
                  isVisisble = false;// invisible 
                }
                else 
                {
                  myOpacity = 1.0;
                  isVisisble = true;
                }
              });

            }, child: Text('Close'))
          ],
        ),
      )
    );
  }
}
 