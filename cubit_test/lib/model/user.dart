class UserModel {
  String name;
  String email;
  String phone;
  String userName;

  UserModel({
    required this.name,
    required this.email,
    required this.phone,
    required this.userName,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json["name"],
      email: json["email"],
      phone: json["phone"],
      userName: json["username"],
    );
  }
}
