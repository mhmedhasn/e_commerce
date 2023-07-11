import 'package:e_commerce/features/login/domain/entities/signin_entities.dart';
import 'package:e_commerce/features/sign_up/domain/entities/SignUpEntity.dart';

class SignInModels extends SignInEntities {
  String? message;

  SignInModels({this.message, required super.user, required super.token});

  SignInModels.fromJson(dynamic json)
      : this(
          message: json["message"],
          user: User.fromJson(
            json['user'],
          ),
          token: json["token"],
        );
}

class User extends UserEntities {
  String? role;

  User({
    required String name,
    required String email,
    this.role,
  }) : super(name: name, email: email);

  User.fromJson(dynamic json)
      : this(email: json["email"], name: json["name"], role: json["role"]);
}
