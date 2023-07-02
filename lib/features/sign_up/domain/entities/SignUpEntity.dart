import 'package:equatable/equatable.dart';

/// message : "success"
/// user : {"name":"Ahmed Abd Al-Muti","email":"ahmedmutti01@gmail.com","role":"user"}
/// token : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY0OWYxN2UzMzVmMjRiYTMxODQ2MWQwOSIsIm5hbWUiOiJBaG1lZCBBYmQgQWwtTXV0aSIsInJvbGUiOiJ1c2VyIiwiaWF0IjoxNjg4MTQ3OTM5LCJleHAiOjE2OTU5MjM5Mzl9.J5t6gBGjM3fg9vvuHizay7bwuSBqIGVbMsPRC-2ICkY"

class SignUpEntity extends Equatable {
  SignUpEntity({
    required this.user,
    required this.token,
  });

  UserEntities? user;
  String? token;

  @override

  List<Object?> get props => [user,token];
}

/// name : "Ahmed Abd Al-Muti"
/// email : "ahmedmutti01@gmail.com"
/// role : "user"

class UserEntities extends Equatable{
  UserEntities({
    required this.name,
    required this.email,
  });

  String? name;
  String? email;

  @override
  List<Object?> get props => [name,email];
}
