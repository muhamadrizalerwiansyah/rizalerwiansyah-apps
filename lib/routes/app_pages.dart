import 'package:get/get.dart';
import 'package:rizal_erwiansyah/bindings/dashboard_binding.dart';
import 'package:rizal_erwiansyah/bindings/login_binding.dart';
import 'package:rizal_erwiansyah/pages/dashboard/add.dart';
import 'package:rizal_erwiansyah/pages/dashboard/dashboard.dart';
import 'package:rizal_erwiansyah/pages/login/login.dart';
import 'package:rizal_erwiansyah/routes/route_name.dart';

import '../bindings/edit_bindings.dart';
import '../pages/dashboard/edit.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: RouteName.login,
      page: () => LoginPages(),
      binding: LoginB(),
    ),
    GetPage(
      name: RouteName.dashboard,
      page: () => DashboardPages(),
      binding: DashboardB(),
    ),
    GetPage(
      name: RouteName.add,
      page: () => AddPages(),
      binding: DashboardB(),
    ),
    GetPage(
      name: RouteName.edit,
      page: () => EditPages(),
      binding: EditB(),
    ),
  ];
}
