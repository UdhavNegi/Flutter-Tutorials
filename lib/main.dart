// import 'package:first_app/IntroPage.dart';
// import 'package:first_app/Widgets/rounded_btn.dart';
// import 'package:first_app/ui_helper/util.dart';
// import 'package:first_app/my_profile_screen.dart';
// import 'package:first_app/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// import './IntroPage.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home : MyHomePage()
    );
  }
}

class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState()
  {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage>{

  RangeValues values = RangeValues(0, 100);

  @override
  Widget build(BuildContext context)
  {
    RangeLabels labels = RangeLabels(values.start.toString(), values.end.toString());
    return Scaffold(
      appBar : AppBar(
        title: Text('Range'),
        backgroundColor: Colors.blue,
      ),

      body : Center(
        child: RangeSlider(
          values : values,
          labels : labels,
          divisions : 20,
          activeColor: Colors.green,
          inactiveColor: Colors.green.shade100,
          min : 0,
          max : 100,
          onChanged: (newValue){
            values = newValue;
            print('${newValue.start}, ${newValue.end}');
            setState(() {
              
            });
          },
        )
        )
    );
  }
}
