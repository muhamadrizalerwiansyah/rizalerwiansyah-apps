import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditC extends GetxController {
  late TextEditingController rmBranchIdController;
  late TextEditingController rmRepIdController;
  late TextEditingController rmNameController;
  late TextEditingController rmCurrentController;
  late TextEditingController rmManagerController;

  @override
  void onInit() async {
    super.onInit();
    rmBranchIdController = TextEditingController();
    rmRepIdController = TextEditingController();
    rmNameController = TextEditingController();
    rmCurrentController = TextEditingController();
    rmManagerController = TextEditingController();
  }

  @override
  void onClose() {
    rmBranchIdController.dispose();
    rmRepIdController.dispose();
    rmNameController.dispose();
    rmCurrentController.dispose();
    rmManagerController.dispose();
    super.onClose();
  }
}
