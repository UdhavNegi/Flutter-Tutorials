import 'package:first_app/model/user_name.dart';

class User
{
  List<User> users = [];
  final String gender;
  final String email;
  final String phone;
  final String cell;
  final String nat;
  final UserName name;
  User({
    required this.gender,
    required this.email,
    required this.phone,
    required this.cell,
    required this.nat,
    required this.name,
    });

  String get fullName{
    return '${name.title} ${name.first} ${name.last}';
  }
}

