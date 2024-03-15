import 'package:first_app/Widgets/rounded_btn.dart';
import 'package:first_app/ui_helper/util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// for intel date and time
// import 'package:intl/intl_browser.dart';
import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



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
          // colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
          // useMaterial3: true,
          primarySwatch: Colors.blue,
          textTheme: TextTheme(
              headline1: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              headline2: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                  color: Colors.lightGreen),
              subtitle1: TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
              subtitle2: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                  color: Colors.orange))),
                home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState()
  {
    return MyHomeState();
  }
}

class MyHomeState extends State<MyHomePage>{
  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();

  var result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        title : Text('Basic Calculations'),
        backgroundColor: Colors.blue,
      ),

      body : Container(
        color : Colors.blue.shade100,
        child : Center(
          child : Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  keyboardType: TextInputType.number,
                  controller: no1Controller,
                ),
            
            
                TextField(
                  keyboardType: TextInputType.number,
                  controller: no2Controller,
                ),
            
                Padding(
                  padding: const EdgeInsets.all(21.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(onPressed: (){
                        var no1 = int.parse(no1Controller.text.toString());
                        var no2 = int.parse(no2Controller.text.toString());

                        var sum = no1 + no2;
                        result = "The sum of $no1 and $no2 is $sum";
                        setState(() {
                          
                        });
                      }, 
                      child: Text('Add'), 
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                      ),
                      ElevatedButton(onPressed: (){
                        var no1 = int.parse(no1Controller.text.toString());
                        var no2 = int.parse(no2Controller.text.toString());

                        var diff = no1 - no2;
                        result = "The difference between $no1 and $no2 is $diff";
                        setState(() {});
                      },
                      child: Text('Sub'), 
                      ),
                      ElevatedButton(onPressed: (){
                        var no1 = int.parse(no1Controller.text.toString());
                        var no2 = int.parse(no2Controller.text.toString());

                        var mul = no1 * no2;
                        result = "The Producrt of $no1 and $no2 is $mul";
                        setState(() {});
                      }, child: Text('Mult')),
                      ElevatedButton(onPressed: (){
                        var no1 = int.parse(no1Controller.text.toString());
                        var no2 = int.parse(no2Controller.text.toString());

                        var div = no1 / no2;
                        result = "The division of $no1 by $no2 is $div";
                        setState(() {});
                      }, child: Text('Div')),
                    ],
                  ),
                ),

                Padding(padding: EdgeInsets.all(21), 
                        child : Text(result, style : TextStyle(fontSize: 25))
                )
              ],
            ),
          )
        )
      )
    );
  }

}