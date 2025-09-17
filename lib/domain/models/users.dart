import 'package:equatable/equatable.dart';

class Users extends Equatable{
  Users({
    required this.name,
    required this.email,
    required this.phone,
  });

  final String name;
  final String email;
  final String phone;

  factory Users.fromJson(Map<String, dynamic> json) => Users(
    name: json['name'] as String,
    email: json['email'] as String,
    phone: json['phone'] as String,
  );
  
  @override
  List<Object?> get props => [name, email, phone];
}