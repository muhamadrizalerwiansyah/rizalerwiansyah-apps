import 'dart:convert';

import 'package:get/get.dart';

import '../models/EmployeeModel.dart';

class EmployeeProvider extends GetConnect {
  final url = "http://10.0.41.11:8000/api/";
  var mainHeaders = {
    'Content-Type': 'application/json; charset=UTF-8',
  };

  Future<Response> getData() {
    return get('${url}employee-all');
  }

  Future<Response> deleteData(String id) {
    return delete('${url}employee-delete/$id');
  }

  Future<Response> saveData(
    String rmBranch,
    String rmRep,
    String rmName,
    String rmCurrentPosition,
    String rmManager,
  ) {
    final body = json.encode({
      "rm_branch": rmBranch,
      "rm_rep": rmRep,
      "rm_name": rmName,
      "rm_current_position": rmCurrentPosition,
      "rm_manager": rmManager
    });
    return post('${url}superior-insert', body);
  }

  Future<Response> editData(
    String id,
    String rmBranch,
    String rmRep,
    String rmName,
    String rmCurrentPosition,
    String rmManager,
  ) {
    final body = json.encode({
      "rm_branch": rmBranch,
      "rm_rep": rmRep,
      "rm_name": rmName,
      "rm_current_position": rmCurrentPosition,
      "rm_manager": rmManager
    });
    return patch('${url}superior-update/$id', body);
  }
}
