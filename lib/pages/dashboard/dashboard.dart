import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rizal_erwiansyah/configs/colorStyle.dart';
import 'package:rizal_erwiansyah/configs/constant.dart';
import 'package:rizal_erwiansyah/controllers/dashboard_controller.dart';

class DashboardPages extends StatelessWidget {
  const DashboardPages({super.key});

  @override
  Widget build(BuildContext context) {
    final c = Get.find<DashboardC>();
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: 45.h,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPaddin20),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 50.h,
                  child: Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 50.h,
                            child: Container(
                              width: 50.w,
                              height: 50.h,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                image: DecorationImage(
                                  image: AssetImage("assets/images/person.png"),
                                ),

                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromARGB(255, 236, 236, 236),
                                    blurRadius: 3,
                                    offset: Offset(1, 1), // Shadow position
                                  ),
                                ],
                                border:
                                    Border.all(width: 2, color: Colors.white),
                                // color: colorMain,
                              ),
                            ),
                          )),
                      Expanded(
                          flex: 3,
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: kDefaultPaddin5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Text(
                                    "Hello",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: colorBlackGray),
                                  ),
                                  Text(
                                    "Muhamad Rizal Erwiansyah",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: colorGrayText),
                                  ),
                                ],
                              ),
                            ),
                          )),
                      Expanded(
                          flex: 1,
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            // height: 50.h,
                            child: Container(
                              width: 30.w,
                              height: 30.h,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromARGB(255, 236, 236, 236),
                                    blurRadius: 3,
                                    offset: Offset(1, 1), // Shadow position
                                  ),
                                ],
                                border:
                                    Border.all(width: 2, color: Colors.white),
                                // color: colorMain,
                              ),
                              child: Icon(
                                Icons.logout,
                                size: 15,
                                color: colorMain,
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPaddin20),
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(35),
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
                          horizontal: kDefaultPaddin10),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Icon(
                              Icons.search,
                              color: colorGrayLine,
                              size: 25,
                            ),
                          ),
                          Expanded(
                            child: TextField(
                              onChanged: (value) {},
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Search...",
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
                    )),
              ),
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPaddin20),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 35.h,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 40.h,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(255, 187, 185, 185),
                                  blurRadius: 3,
                                  offset: Offset(1, 1), // Shadow position
                                ),
                              ],
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add_box,
                                size: 20,
                                color: colorMain,
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              Text(
                                "Add",
                                style: TextStyle(
                                    color: colorMain,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 3,
                          child: Container(
                              // color: colorGrayLine,
                              )),
                      Expanded(
                          flex: 2,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 40.h,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromARGB(255, 187, 185, 185),
                                    blurRadius: 3,
                                    offset: Offset(1, 1), // Shadow position
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.document_scanner,
                                  size: 20,
                                  color: colorMain,
                                ),
                                SizedBox(
                                  width: 3.w,
                                ),
                                Text(
                                  "Export",
                                  style: TextStyle(
                                      color: colorMain,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              WidgetItemUser(),
              WidgetItemUser(),
              WidgetItemUser(),
              WidgetItemUser(),
              WidgetItemUser(),
              WidgetItemUser(),
              WidgetItemUser(),
              WidgetItemUser(),
              WidgetItemUser(),
            ],
          ),
        ),
      ),
    );
  }
}

class WidgetItemUser extends StatelessWidget {
  const WidgetItemUser({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPaddin20, vertical: kDefaultPaddin5),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 50.h,
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  width: 40.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(255, 214, 214, 214),
                          blurRadius: 3,
                          offset: Offset(1, 1), // Shadow position
                        ),
                      ],
                      image: const DecorationImage(
                        image: AssetImage("assets/images/person.png"),
                      ),
                      border: Border.all(width: 2, color: Colors.white),
                      color: Colors.white,
                      shape: BoxShape.circle),
                )),
            Expanded(
                flex: 3,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: kDefaultPaddin5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Muhamad Rizal Erwiansyah",
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                              color: colorBlackGray),
                        ),
                        Text(
                          "Administrator",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: colorGrayText),
                        ),
                      ],
                    ),
                  ),
                )),
            Expanded(
                flex: 2,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: kDefaultPaddin5),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: Container(
                                width: 35.w,
                                height: 35.h,
                                decoration: const BoxDecoration(boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(255, 214, 214, 214),
                                    blurRadius: 3,
                                    offset: Offset(1, 1), // Shadow position
                                  ),
                                ], color: Colors.white, shape: BoxShape.circle),
                                child: Icon(
                                  Icons.edit_outlined,
                                  color: colorMain,
                                ),
                              ),
                            )),
                        Expanded(
                          flex: 1,
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: Container(
                              width: 35.w,
                              height: 35.h,
                              decoration: const BoxDecoration(boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(255, 214, 214, 214),
                                  blurRadius: 3,
                                  offset: Offset(1, 1), // Shadow position
                                ),
                              ], color: Colors.white, shape: BoxShape.circle),
                              child: Icon(
                                Icons.delete_sweep_outlined,
                                color: colorDanger,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
