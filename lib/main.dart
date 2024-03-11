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

      body : Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex : 2,
            child : Container(width : 50,
            height: 100,
            color: Colors.blue,),
          ),
          Container(
            width : 50,
            height: 100,
            color: Colors.blue,
          ),

          // Expanded(
          //   child : Container(
            Container(
              width : 50,
              height: 100,
              color: Colors.orange,
            ),
          // ),

          
          Container(
            width : 50,
            height: 100,
            color: Colors.blueGrey,
          ),
          
          Container(
            width : 50,
            height: 100,
            color: Colors.green,
          ),
        ],
      )
    );
  }
}

