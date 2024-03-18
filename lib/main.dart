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
    // TODO: implement createState
    return _MyHomePage();
  }

}

class _MyHomePage extends State<MyHomePage> with SingleTickerProviderStateMixin{
  late Animation animation;
  late Animation colorAnimation;
  late AnimationController animationController;

  @override
  void initState()
  {
    super.initState();
    animationController = AnimationController(vsync: this, duration: Duration(seconds: 5));
    animation = Tween(begin : 200.0, end : 100.0).animate(animationController);

    colorAnimation = ColorTween(begin : Colors.blue, end : Colors.orange).animate(animationController);

    animationController.addListener(() { 
      setState(() {
        
      });
     });

     animationController.forward();

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tween Animation"),
        backgroundColor: Colors.blue,
      ),

      body : Center(
        child: Container(
          width : animation.value, 
          height : animation.value,
          color : colorAnimation.value
        ),
      )

    );
  }

}