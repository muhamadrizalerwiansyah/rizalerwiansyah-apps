import 'package:get/get.dart';
import 'package:rizal_erwiansyah/controllers/dashboard_controller.dart';

class DashboardB implements Bindings {
  @override
  void dependencies() {
    Get.put(DashboardC());
  }
}
