import 'package:e_commerce/features/sign_up/domain/entities/SignUpEntity.dart';

class SignUpModels extends SignUpEntity {
  String? message;

  SignUpModels( {this.message, required super.user, required super.token});

  SignUpModels.fromJson(dynamic json)
      :this(
    message: json["message"],
    user: User.fromJson(json['user'],),
    token: json["token"],

  );
}

class User extends UserEntities {
  String? role;

  User({required  String name,required String email,this.role,}):super(name:name,email: email );

  User.fromJson(dynamic json) :this(email: json["email"],
      name: json["name"], role: json["role"]);

}
