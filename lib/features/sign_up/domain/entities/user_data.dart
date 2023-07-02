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

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['phone'] = this.phone;
    data['password'] = this.password;
    data['rePassword'] = this.rePassword;
    data['email'] = this.email;
    return data;
  }
}
