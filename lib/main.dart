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

      body : Container(
        color : Colors.blueGrey,
        margin : EdgeInsets.all(11),
        child: Padding(
          padding: const EdgeInsets.only(top : 21, left : 34, bottom : 11, right : 34),
          child: Text('Hello world!', style : TextStyle(fontSize: 25, color : Colors.white),),
        ),
      )
    );
  }
}

