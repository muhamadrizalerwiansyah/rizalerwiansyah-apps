import 'package:get/get.dart';
import 'package:rizal_erwiansyah/controllers/login_controller.dart';

class LoginB implements Bindings {
  @override
  void dependencies() {
    Get.put(LoginC());
  }
}
