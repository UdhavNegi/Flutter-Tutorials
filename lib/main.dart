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
      home: MyHomePage()
    );
  }
}

class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MyHomePage();
  }
}

class _MyHomePage extends State<MyHomePage> with SingleTickerProviderStateMixin{
  late Animation _animatation;
  late AnimationController _animationController;

  var listRadius = [150.0, 200.0, 250.0, 300.0, 350.0];

  @override
  void initState()
  {
    super.initState();
    _animationController = AnimationController(vsync: this, duration: Duration(seconds: 4));
    _animatation = Tween(begin : 0.0, end : 1.0).animate(_animationController);

    _animationController.addListener(() { });

    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ripple Animation Effect"),
        backgroundColor: Colors.blue,
      ),

      body : Center(
        child: Center(
          child: Stack(
            children: listRadius.map((radius) => Container(
              width : radius* _animatation.value, 
              height: radius * _animatation.value,
              decoration: BoxDecoration(
                shape: BoxShape.circle, 
                color : Colors.blue.withOpacity(1.0 - _animatation.value)
              ),
            )).toList(),
          )
          )
      )

    );
  }
}