import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rizal_erwiansyah/configs/colorStyle.dart';
import 'package:rizal_erwiansyah/configs/constant.dart';
import 'package:rizal_erwiansyah/models/EmployeeModel.dart';

import '../../controllers/dashboard_controller.dart';
import '../../controllers/edit_controller.dart';

class EditPages extends StatelessWidget {
  final c = Get.find<DashboardC>();
  final edit = Get.find<EditC>();
  final String uid = Get.arguments;

  @override
  Widget build(BuildContext context) {
    final EmployeeModel employee = c.employeeById(uid);
    c.rmBranchIdController.text = employee.rmBranchId;
    c.rmRepIdController.text = employee.rmRepId;
    c.rmNameController.text = employee.rmName;
    c.rmCurrentController.text = employee.rmCurrentPosition;
    c.rmManagerController.text = employee.rmManagerId;
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50.h,
              ),
              Text(
                "Add",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: colorGrayText),
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: TextField(
                    autocorrect: false,
                    // autofocus:
                    //     true,
                    // enabled: false,
                    controller: c.rmBranchIdController,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      labelText: "rm branch",
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: TextField(
                    autocorrect: false,
                    // autofocus:
                    //     true,
                    // enabled: false,
                    controller: c.rmRepIdController,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      labelText: "rm rep",
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: TextField(
                    autocorrect: false,
                    // autofocus:
                    //     true,
                    // enabled: false,
                    controller: c.rmNameController,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      labelText: "rm name",
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: TextField(
                    autocorrect: false,
                    // autofocus:
                    //     true,
                    // enabled: false,
                    controller: c.rmCurrentController,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      labelText: "rm current position",
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Obx(
                  () => DropdownButtonFormField2(
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.zero,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    isExpanded: true,
                    hint: const Text(
                      'Choose',
                      style: TextStyle(fontSize: 14),
                    ),
                    icon: const Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black45,
                    ),
                    iconSize: 30,
                    buttonHeight: 60,
                    buttonPadding: const EdgeInsets.only(left: 20, right: 10),
                    dropdownDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    items: c.employee
                        .map((item) => DropdownMenuItem<String>(
                              value: item.rmRepId,
                              child: Text(
                                item.rmName,
                                style: const TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ))
                        .toList(),
                    validator: (value) {
                      if (value == null) {
                        return 'Please select PO number.';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      c.rmManagerController.text = value.toString();
                    },
                    onSaved: (value) {
                      // selectedPOnumber = value.toString();
                      // setState(() {
                      //   cekPO = value.toString();
                      // });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              InkWell(
                onTap: () => c.editData(
                    uid,
                    c.rmBranchIdController.text,
                    c.rmRepIdController.text,
                    c.rmNameController.text,
                    c.rmCurrentController.text,
                    c.rmManagerController.text),
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 40.h,
                    decoration: BoxDecoration(
                        color: colorMain,
                        borderRadius: BorderRadius.circular(5)),
                    child: const Center(
                      child: Text(
                        "Save",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
