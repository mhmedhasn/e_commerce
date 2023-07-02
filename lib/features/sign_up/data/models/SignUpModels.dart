import 'package:e_commerce/features/sign_up/domain/entities/SignUpEntity.dart';

class SignUpModels extends SignUpEntity {
  String? message;

  SignUpModels( {this.message, super.user, super.token});

  SignUpModels.fromJson(dynamic json)
      :this(
    message: json["message"],
    token: json["token"],
    user: User.fromJson(json['user'],),);
}

class User extends UserEntities {
  String? role;

  User({
    super.name,
    super.email,
    this.role,
  });

  User.fromJson(dynamic json) :this(email: json["email"],
      name: json["name"], role: json["role"]);

}
