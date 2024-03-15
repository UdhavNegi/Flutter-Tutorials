// import 'package:first_app/IntroPage.dart';
// import 'package:first_app/Widgets/rounded_btn.dart';
// import 'package:first_app/ui_helper/util.dart';
import 'package:first_app/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// import './IntroPage.dart';



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
            primarySwatch: Colors.blue
            ),
            home: SplashScreen(),
    );
  }
}

class DashBoardScreen extends StatelessWidget{

  var fun = () => print("inside dash board screen");
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text('Dashboard'),
      ),
      body : Center(
        child: Container(
          child : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('DashBoard Screen')
            ],
          )
        ),
      )
    );
  }
}