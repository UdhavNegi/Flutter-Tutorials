import 'package:flutter/material.dart';
void main()
{
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title : "FlutterApp",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home : DashBoardScreen()

    );
  }

}

class DashBoardScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title : Text("Dashboard"),
      ),

      body : Padding(
        // padding: EdgeInsets.only(top : 11, left : 34),
        padding: EdgeInsets.all(11),
        child: Text('Hello world!', style : TextStyle(fontSize: 25),),
      )
    );
  }
}

