import 'dart:convert';

EmployeeModel employeeModelFromJson(String str) =>
    EmployeeModel.fromJson(json.decode(str));

String employeeModelToJson(EmployeeModel data) => json.encode(data.toJson());

class EmployeeModel {
  EmployeeModel({
    required this.id,
    required this.rmBranchId,
    required this.rmRepId,
    required this.rmName,
    required this.rmCurrentPosition,
    required this.rmManagerId,
    this.rememberToken,
    required this.createdAt,
    required this.updatedAt,
  });

  String id;
  String rmBranchId;
  String rmRepId;
  String rmName;
  String rmCurrentPosition;
  String rmManagerId;
  dynamic rememberToken;
  String createdAt;
  String updatedAt;

  factory EmployeeModel.fromJson(Map<String, dynamic> json) => EmployeeModel(
        id: json["id"] ?? "-",
        rmBranchId: json["rm_branch_id"] ?? "-",
        rmRepId: json["rm_rep_id"] ?? "-",
        rmName: json["rm_name"] ?? "-",
        rmCurrentPosition: json["rm_current_position"] ?? "-",
        rmManagerId: json["rm_manager_id"] ?? "-",
        rememberToken: json["remember_token"] ?? "-",
        createdAt: json["created_at"] ?? "-",
        updatedAt: json["updated_at"] ?? "-",
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "rm_branch_id": rmBranchId,
        "rm_rep_id": rmRepId,
        "rm_name": rmName,
        "rm_current_position": rmCurrentPosition,
        "rm_manager_id": rmManagerId,
        "remember_token": rememberToken,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}
