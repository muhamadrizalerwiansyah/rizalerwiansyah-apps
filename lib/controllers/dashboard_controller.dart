import 'dart:convert';
import 'dart:io';

import 'package:excel/excel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:load/load.dart';
import 'package:path_provider/path_provider.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:rizal_erwiansyah/models/EmployeeModel.dart';
import 'package:rizal_erwiansyah/services/employee_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../configs/colorStyle.dart';
import '../pages/dashboard/dashboard.dart';

class DashboardC extends GetxController {
  var quantity = 0.obs;
  bool sttusLogin = false;
  RxString userServiceId = "".obs;
  RxString userServiceName = "".obs;
  RxString userServiceRole = "".obs;
  var employee = List<EmployeeModel>.empty().obs;
  late TextEditingController rmBranchIdController;
  late TextEditingController rmRepIdController;
  late TextEditingController rmNameController;
  late TextEditingController rmCurrentController;
  late TextEditingController rmManagerController;
  late TextEditingController searchController;

  @override
  void onInit() async {
    super.onInit();
    rmBranchIdController = TextEditingController();
    rmRepIdController = TextEditingController();
    rmNameController = TextEditingController();
    rmCurrentController = TextEditingController();
    rmManagerController = TextEditingController();
    searchController = TextEditingController();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.getString('user') != null) {
      dynamic user = jsonDecode(prefs.getString('user').toString());
      userServiceId.value = user['id'];
      sttusLogin = true;
      userServiceName.value = user['name'];
      userServiceRole.value = user['role'];
      EmployeeProvider().getData().then((value) {
        if (value.body['status'] == true) {
          List data = value.body['data'];
          for (var i = 0; i < data.length; i++) {
            employee.add(EmployeeModel(
                id: data[i]['id'],
                rmBranchId: data[i]['rm_branch_id'],
                rmRepId: data[i]['rm_rep_id'],
                rmName: data[i]['rm_name'],
                rmCurrentPosition: data[i]['rm_current_position'],
                rmManagerId: data[i]['rm_manager_id'],
                createdAt: data[i]['created_at'],
                updatedAt: data[i]['updated_at']));
          }
        }
      });
    }
  }

  EmployeeModel employeeById(String id) {
    return employee.firstWhere((element) => element.id == id);
  }

  void saveData(String rmBranch, String rmRep, String rmName,
      String rmCurrentPosition, String rmManager) {
    showLoadingDialog();
    if (rmBranch != "" &&
        rmBranch != "" &&
        rmName != "" &&
        rmCurrentPosition != "") {
      EmployeeProvider()
          .saveData(rmBranch, rmRep, rmName, rmCurrentPosition, rmManager)
          .then((value) {
        if (value.body['status'] == true) {
          employee.add(EmployeeModel(
              id: value.body['data']['id'],
              rmBranchId: value.body['data']['rm_branch_id'],
              rmRepId: value.body['data']['rm_rep_id'],
              rmName: value.body['data']['rm_name'],
              rmCurrentPosition: value.body['data']['rm_current_position'],
              rmManagerId: value.body['data']['rm_manager_id'],
              createdAt: value.body['data']['created_at'],
              updatedAt: value.body['data']['updated_at']));
          hideLoadingDialog();
          Get.off(DashboardPages());
        } else {
          hideLoadingDialog();
          Alert(
            context: Get.context!,
            type: AlertType.error,
            title: "Failed",
            desc: "Error......!",
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
        desc: "Error......!",
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

  void editData(String id, String rmBranch, String rmRep, String rmName,
      String rmCurrentPosition, String rmManager) {
    showLoadingDialog();
    if (id != "" &&
        rmBranch != "" &&
        rmBranch != "" &&
        rmName != "" &&
        rmCurrentPosition != "") {
      EmployeeProvider()
          .editData(id, rmBranch, rmRep, rmName, rmCurrentPosition, rmManager)
          .then((value) {
        if (value.body['status'] == true) {
          employee.removeWhere((element) => element.id == id);
          employee.add(EmployeeModel(
              id: value.body['data']['id'],
              rmBranchId: value.body['data']['rm_branch_id'],
              rmRepId: value.body['data']['rm_rep_id'],
              rmName: value.body['data']['rm_name'],
              rmCurrentPosition: value.body['data']['rm_current_position'],
              rmManagerId: value.body['data']['rm_manager_id'],
              createdAt: value.body['data']['created_at'],
              updatedAt: value.body['data']['updated_at']));
          hideLoadingDialog();
          Get.off(DashboardPages());
        } else {
          hideLoadingDialog();
          Alert(
            context: Get.context!,
            type: AlertType.error,
            title: "Failed",
            desc: "Error......!",
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
        desc: "Error......!",
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

  Future<bool> deleteData(String id) async {
    bool _deleted = false;
    await Get.defaultDialog(
      title: "DELETE",
      middleText: "Apakah kamu yakin untuk menghapus data user ini?",
      textConfirm: "Ya",
      confirmTextColor: Colors.white,
      onConfirm: () {
        showLoadingDialog();
        EmployeeProvider().deleteData(id).then((_) {
          employee.removeWhere((element) => element.id == id);
          _deleted = true;
        });
        hideLoadingDialog();
        Get.back();
      },
      textCancel: "Tidak",
    );
    return _deleted;
  }

  Future<void> downloadExcelFile() async {
    var response =
        await Get.to<String>('http://10.0.41.11:8000/api/employee-export');
    var dir = await getExternalStorageDirectory();
    var file = File('${dir?.path}/exported_data.xlsx');
    await file.writeAsString(response!);
  }

  @override
  void onClose() {
    rmBranchIdController.dispose();
    rmRepIdController.dispose();
    rmNameController.dispose();
    rmCurrentController.dispose();
    rmManagerController.dispose();
    searchController.dispose();
    super.onClose();
  }
}
