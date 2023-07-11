import 'package:e_commerce/features/sign_up/domain/entities/SignUpEntity.dart';
import 'package:equatable/equatable.dart';
class SignInEntities extends Equatable {
  SignInEntities({
    required this.user,
    required this.token,
  });

  UserEntities user;
  String token;

  @override

  List<Object?> get props => [user,token];
}
