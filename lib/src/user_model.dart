import 'dart:convert';

class User {
  final String name;
  final String email;
  final String password;

  User({
    required this.name,
    required this.email,
    required this.password,
  });

  User copyWithName(String name) => User(
        name: name,
        email: email,
        password: password,
      );

  @override
  String toString() => email;

  factory User.fromJson(Map<String, dynamic> json) => User(
        name: json['name'],
        email: json['email'],
        password: '',
      );

  toJson() => jsonEncode(
        {
          'email': email,
          'name': name,
        },
      );
}
