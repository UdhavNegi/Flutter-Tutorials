import 'package:first_app/Widgets/rounded_btn.dart';
import 'package:first_app/ui_helper/util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// for intel date and time
// import 'package:intl/intl_browser.dart';
import 'package:intl/intl.dart';

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

// This is the homepage for our flutter app
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('Custom widget'),
        ),
        body: Wrap(
          children: [
            
            
            
            SizedBox.square(
            dimension: 200,
            child : ElevatedButton(onPressed: (){}, child : Text('Click'))
          ),
            
            SizedBox(
              width : 20,
            ),

            SizedBox.square(
            dimension: 200,
            child : ElevatedButton(onPressed: (){}, child : Text('Click'))
          ),
          
          ]
        )
    );
  }
}




