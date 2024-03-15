// import 'package:first_app/my_profile_screen.dart.dart';
// import 'package:first_app/Widgets/rounded_btn.dart';
// import 'package:first_app/splash_screen.dart';
// import 'package:first_app/ui_helper/util.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

// import 'my_profile_screen.dart.dart';



void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  // const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
            primarySwatch: Colors.blue
            ),
            home: DashBoardScreen(),
    );
  }
}

// This is created by me 
class DashBoardScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text('Classico'),
        backgroundColor: Colors.orange,
      ),
      body : Text('Hello world'),
  
    );
  }
}

