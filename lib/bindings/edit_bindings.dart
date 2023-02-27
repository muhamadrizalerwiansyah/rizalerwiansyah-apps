import 'package:get/get.dart';
import 'package:rizal_erwiansyah/controllers/dashboard_controller.dart';

import '../controllers/edit_controller.dart';

class EditB implements Bindings {
  @override
  void dependencies() {
    Get.put(DashboardC());
    Get.put(EditC());
  }
}
