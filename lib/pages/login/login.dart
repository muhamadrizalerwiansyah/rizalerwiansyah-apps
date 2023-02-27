import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:rizal_erwiansyah/configs/colorStyle.dart';

import '../../configs/constant.dart';
import '../../routes/route_name.dart';

class LoginPages extends StatelessWidget {
  const LoginPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: SizedBox(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/Vector1.png"),
                            fit: BoxFit.fill)),
                  ),
                )),
            Expanded(
                flex: 4,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPaddin20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Hello",
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w700,
                            color: colorBlackGray),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "Sign in to your account",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: colorGrayText),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 40.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromARGB(255, 213, 213, 213),
                              blurRadius: 3,
                              offset: Offset(1, 1), // Shadow position
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: kDefaultPaddin5),
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Icon(
                                  Icons.person,
                                  color: colorGrayLine,
                                  size: 25,
                                ),
                              ),
                              Expanded(
                                child: TextField(
                                  onChanged: (value) {},
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Username",
                                    hintStyle: TextStyle(color: colorGrayLine),
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 8, horizontal: 8),
                                    isDense: true,
                                  ),
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: colorGrayLine,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 40.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromARGB(255, 213, 213, 213),
                              blurRadius: 3,
                              offset: Offset(1, 1), // Shadow position
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: kDefaultPaddin5),
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Icon(
                                  Icons.lock_rounded,
                                  color: colorGrayLine,
                                  size: 25,
                                ),
                              ),
                              Expanded(
                                child: TextField(
                                  onChanged: (value) {},
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Password",
                                    hintStyle: TextStyle(color: colorGrayLine),
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 8, horizontal: 8),
                                    isDense: true,
                                  ),
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: colorGrayLine,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: kDefaultPaddin10),
                          child: Text(
                            "Forgot your password?",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: colorGrayLine),
                            textAlign: TextAlign.end,
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            Expanded(
                flex: 2,
                child: SizedBox(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/Frame.png"),
                            fit: BoxFit.cover)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPaddin20),
                      child: Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 50.h,
                            child: Row(
                              children: [
                                Expanded(
                                    flex: 3,
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            "Sign in",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600,
                                                color: colorBlackGray),
                                          ),
                                        ],
                                      ),
                                    )),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Expanded(
                                  flex: 1,
                                  child: InkWell(
                                    onTap: () =>
                                        Get.toNamed(RouteName.dashboard),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 40.h,
                                      decoration: BoxDecoration(
                                          boxShadow: const [
                                            BoxShadow(
                                              color: Color.fromARGB(
                                                  255, 213, 213, 213),
                                              blurRadius: 3,
                                              offset: Offset(
                                                  1, 1), // Shadow position
                                            ),
                                          ],
                                          gradient: LinearGradient(
                                            begin: Alignment.topRight,
                                            end: Alignment.bottomLeft,
                                            colors: [
                                              colorMain,
                                              const Color(0xFF8692F6),
                                            ],
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Icon(
                                        Icons.arrow_forward_rounded,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Text(
                            "Or sign in using social media",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: colorGrayText),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 50.h,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Alert(
                                      context: context,
                                      type: AlertType.error,
                                      title: "Opps!",
                                      desc: "This feature is not yet available",
                                      buttons: [
                                        DialogButton(
                                          color: colorMain,
                                          onPressed: () =>
                                              Navigator.pop(context),
                                          width: 120,
                                          child: const Text(
                                            "OKE",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20),
                                          ),
                                        )
                                      ],
                                    ).show();
                                  },
                                  child: Container(
                                    width: 40.w,
                                    height: 40.h,
                                    decoration: BoxDecoration(
                                        boxShadow: const [
                                          BoxShadow(
                                            color: Color.fromARGB(
                                                255, 214, 214, 214),
                                            blurRadius: 3,
                                            offset:
                                                Offset(1, 1), // Shadow position
                                          ),
                                        ],
                                        color: Colors.white,
                                        shape: BoxShape.circle),
                                    child: Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height:
                                            MediaQuery.of(context).size.height,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/google.png"),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                InkWell(
                                  onTap: () {
                                    Alert(
                                      context: context,
                                      type: AlertType.error,
                                      title: "Opps!",
                                      desc: "This feature is not yet available",
                                      buttons: [
                                        DialogButton(
                                          color: colorMain,
                                          onPressed: () =>
                                              Navigator.pop(context),
                                          width: 120,
                                          child: const Text(
                                            "OKE",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20),
                                          ),
                                        )
                                      ],
                                    ).show();
                                  },
                                  child: Container(
                                    width: 40.w,
                                    height: 40.h,
                                    decoration: BoxDecoration(
                                        boxShadow: const [
                                          BoxShadow(
                                            color: Color.fromARGB(
                                                255, 214, 214, 214),
                                            blurRadius: 3,
                                            offset:
                                                Offset(1, 1), // Shadow position
                                          ),
                                        ],
                                        color: Colors.white,
                                        shape: BoxShape.circle),
                                    child: Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height:
                                            MediaQuery.of(context).size.height,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/fb.png"),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                InkWell(
                                  onTap: () {
                                    Alert(
                                      context: context,
                                      type: AlertType.error,
                                      title: "Opps!",
                                      desc: "This feature is not yet available",
                                      buttons: [
                                        DialogButton(
                                          color: colorMain,
                                          onPressed: () =>
                                              Navigator.pop(context),
                                          width: 120,
                                          child: const Text(
                                            "OKE",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20),
                                          ),
                                        )
                                      ],
                                    ).show();
                                  },
                                  child: Container(
                                    width: 40.w,
                                    height: 40.h,
                                    decoration: const BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color.fromARGB(
                                                255, 214, 214, 214),
                                            blurRadius: 3,
                                            offset:
                                                Offset(1, 1), // Shadow position
                                          ),
                                        ],
                                        color: Colors.white,
                                        shape: BoxShape.circle),
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height:
                                            MediaQuery.of(context).size.height,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/apple.png"),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
