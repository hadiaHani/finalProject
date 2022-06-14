class UserModel {
  String? id;
  String fName;
  String email;
  String password;
  String phone;
  UserModel(
      {this.id,
      required this.fName,
      required this.email,
      required this.password,
      required this.phone});
  toMap() {
    return {'fName': fName, "email": email, 'phone': phone};
  }
}
