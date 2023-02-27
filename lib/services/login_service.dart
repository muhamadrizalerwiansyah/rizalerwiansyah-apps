import 'dart:convert';

import 'package:get/get.dart';

class LoginProvider extends GetConnect {
  final url = "http://172.20.10.3:8000/api/login-apps";
  var mainHeaders = {
    'Content-Type': 'application/json; charset=UTF-8',
  };

  //login
  Future<Response> login(String email, String password) {
    final body = json.encode({"email": email, "password": password});
    return post(url, body);
  }
}
