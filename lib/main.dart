// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:load/load.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:rizal_erwiansyah/configs/navigator_key.dart';
import 'package:rizal_erwiansyah/pages/login/login.dart';
import 'package:rizal_erwiansyah/routes/app_pages.dart';

import 'configs/themes.dart';

const List<Color> _kDefaultRainbowColors = [
  Color(0xFF48cae4),
  Color(0xFF0077b6),
  Color(0xFF0096c7),
];
const colorizeColors = [
  Color(0xFF48cae4),
  Color(0xFF0077b6),
  Color(0xFF0096c7),
];

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final GlobalKey<NavigatorState> navKey = navigatorKey;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LoadingProvider(
      themeData: LoadingThemeData(tapDismiss: false),
      loadingWidgetBuilder: (ctx, data) {
        return Center(
          child: SizedBox(
            width: 50.w,
            height: 40.h,
            child: const LoadingIndicator(
              indicatorType: Indicator.ballPulseSync,
              colors: _kDefaultRainbowColors,
            ),
          ),
        );
      },
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            navigatorKey: navKey,
            home: const LoginPages(),
            theme: ThemeData(
                primarySwatch: mcolorscheme,
                textTheme: textThemeStyle,
                fontFamily: 'poppins'),
            getPages: AppPages.pages,
          );
        },
      ),
    );
  }
}
