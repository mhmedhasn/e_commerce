class UserData {
  String name;
  String phone;
  String password;
  String rePassword;
  String email;

  UserData(
      {required this.name,
      required this.phone,
      required this.password,
        required this.rePassword,
      required this.email});

//   Map<String, dynamic> toJson() {
//     return  {
//     'name': this.name,
//    'phone' : this.phone,
//     'password' : this.password,
//     'rePassword' : this.rePassword,
//    'email': this.email,
//
//   };
// }
}
