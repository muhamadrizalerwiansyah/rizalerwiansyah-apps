// ignore_for_file: file_names

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  UserModel({
    required this.id,
    required this.name,
    required this.role,
    required this.email,
    this.emailVerifiedAt,
    required this.createdAt,
    required this.updatedAt,
  });

  String id;
  String name;
  String role;
  String email;
  dynamic emailVerifiedAt;
  String createdAt;
  String updatedAt;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json["id"] ?? "-",
        name: json["name"] ?? "-",
        role: json["role"] ?? "-",
        email: json["email"] ?? "-",
        emailVerifiedAt: json["email_verified_at"] ?? "-",
        createdAt: json["created_at"] ?? "-",
        updatedAt: json["updated_at"] ?? "-",
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "role": role,
        "email": email,
        "email_verified_at": emailVerifiedAt,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}
