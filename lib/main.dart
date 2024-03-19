import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
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

class _MyHomePageState extends State<MyHomePage> {

  List<dynamic> users = [];
  
  void initState()
  {
    super.initState();
    getData();
    print("users is $users");
  }

  @override
  Widget build(BuildContext context) {
    var arrNames = ["first", "second", "third"];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body :  ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index){
          final user = users[index];
          final email = user["email"];
          return ListTile(
            leading: CircleAvatar(child: Text("${(index+1).toString()}")),
            title: Text(users[index]["name"]["first"]),
            subtitle: Text(users[index]["email"]),
            trailing: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(users[index]["picture"]["thumbnail"])
              ),
          );
        }
        )
    );
  }
  
  void getData() async {
    final uri = Uri.parse('https://randomuser.me/api/?results=100');
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    setState(() {
      users = json["results"];
    });
  }
}
