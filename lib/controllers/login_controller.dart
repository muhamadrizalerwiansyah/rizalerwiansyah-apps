import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:load/load.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:rizal_erwiansyah/pages/dashboard/dashboard.dart';
import 'package:rizal_erwiansyah/pages/login/login.dart';
import 'package:rizal_erwiansyah/routes/route_name.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../configs/colorStyle.dart';
import '../services/login_service.dart';

class LoginC extends GetxController {
  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  void onInit() {
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  void login(String email, String password) {
    showLoadingDialog();
    if (email != "" && password != "") {
      LoginProvider().login(email, password).then((value) async {
        if (value.body['status'] == true) {
          SharedPreferences prefs = await SharedPreferences.getInstance();
          await prefs.setString('user', jsonEncode(value.body['data']));
          hideLoadingDialog();
          Get.off(DashboardPages());
        } else {
          hideLoadingDialog();
          Alert(
            context: Get.context!,
            type: AlertType.error,
            title: "Failed",
            desc: "Your email and password are incorrect!",
            buttons: [
              DialogButton(
                color: colorMain,
                onPressed: () => Navigator.pop(Get.context!),
                width: 110,
                child: const Text(
                  "OKE",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              )
            ],
          ).show();
        }
      });
    } else {
      hideLoadingDialog();
      Alert(
        context: Get.context!,
        type: AlertType.error,
        title: "Failed",
        desc: "Your email and password are incorrect!",
        buttons: [
          DialogButton(
            color: colorMain,
            onPressed: () => Navigator.pop(Get.context!),
            width: 110,
            child: const Text(
              "OKE",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          )
        ],
      ).show();
    }
  }

  Future<void> logOut() async {
    SharedPreferences sharedUser = await SharedPreferences.getInstance();
    sharedUser.clear();
    Get.off(LoginPages());
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
