import 'dart:convert';
import 'package:first_app/model/user_name.dart';
import 'package:http/http.dart' as http;

import '../model/user.dart';

class UserApi 
{
  static Future<List<User>> fetchUsers() async {
    final uri = Uri.parse('https://randomuser.me/api/?results=200');
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    final results = json['results'] as List<dynamic>;
    final users = results.map((e){
      final name = UserName(title: e['name']['title'], first: e['name']['first'], last: e['name']['last']);
      return User(gender: e['gender'], email: e['email'], phone: e['phone'], cell: e['cell'], nat: e['nat'], name : name);
    }).toList();


    return users;

    // setState(() {
    //   users = transformed;
    // }); 
  }
}