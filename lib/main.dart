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

class MyHomePage extends StatelessWidget{
  var arrData = [
    
    "Violet Schoen", "Davon Bashirian","Sidney Farrell","Stephanie Kshlerin","Gunnar Schneider Jr.","Cassandre Daniel",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Map"),
        backgroundColor: Colors.blue,
      ),

      body : Container(
        child : ListView(
          children: arrData.map((value) =>
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(21), 
                  color : Colors.blue.shade100
                ),
                child : Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(child: Text(value)),
                ), 
                
                ),
            )
          ).toList(),
        )
      )

    );
  }

}