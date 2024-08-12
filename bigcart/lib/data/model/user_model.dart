
class UserModel {
  final int userid;
  final String? username;
  final String? password;
  final String? phone;
  final String? email;
  final String? imageprofile;


  UserModel({
    required this.userid,
    required this.username,
    required this.password,
    required this.phone,
    required this.email,
    required this.imageprofile,
  });

  factory UserModel.fromjson(Map<String, dynamic> json) => UserModel(
      userid: json['userid'],
      username: json['username'],
      password: json['password'],
      phone: json['phone'],
      email: json['email'],
      imageprofile: json['userImage']);

  factory UserModel.clear(id) => UserModel(
      userid: id,
      username: null,
      password: null,
      phone: null,
      email: null,
      imageprofile: null);
}
