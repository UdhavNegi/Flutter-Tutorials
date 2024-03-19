import 'dart:convert';

import 'package:first_app/model/user.dart';
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

  List<User> users = [];
  
  void initState()
  {
    super.initState();
    getData();
    print("users is $users");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body :  ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index){
          final user = users[index];
          final email = user.email;
          final color = user.gender == 'male' ? Colors.blue : Colors.green;
          return ListTile(
            // leading: CircleAvatar(child: Text("${(index+1).toString()}")),
            title: Text(email),
            subtitle: Text(user.phone),
            tileColor: color,
          );
        }
        )
    );
  }
  
  void getData() async {
    final uri = Uri.parse('https://randomuser.me/api/?results=200');
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    final results = json['results'] as List<dynamic>;
    final transformed = results.map((e){
      final name = UserName(title: e['name']['title'], first: e['name']['first'], last: e['name']['last']);
      return User(gender: e['gender'], email: e['email'], phone: e['phone'], cell: e['cell'], nat: e['nat'], name : name);
    }).toList();

    setState(() {
      users = transformed;
    });
    
  }
}
