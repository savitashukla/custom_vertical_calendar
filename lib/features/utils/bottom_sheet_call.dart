
import 'package:flutter/material.dart';


import '../../app/app.dart';

import '../../resources/app_colors.dart';
import 'helper_widgets.dart';

class BottomSheetCall {
  void calendarBottomSheet(BuildContext context) {
    showModalBottomSheet(
        backgroundColor: AppColors.colorGrayDarkBg,
        context: context,
        isScrollControlled: true,
        builder: (context) {
          return Wrap(
            children: [
              Container(
                width: double.infinity,
                //  height: 250,
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom,
                    left: 10,
                    right: 10),
                decoration: const BoxDecoration(
                    color: AppColors.colorGrayDarkBg,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(
                          0.0,
                          5.0,
                        ),
                        blurRadius: 1.0,
                        spreadRadius: .3,
                        color: AppColors.colorPrimary,
                        //   inset: true,
                      ),
                    ],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Stack(
                        children: [
                          Container(
                            height: 6,
                            width: 46,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(9),
                                    topRight: Radius.circular(9)),
                                color: AppColors.homePageBottomColorLine1),
                          ),
                          Container(
                            height: 6,
                            width: 46,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.only(top: 0),
                            decoration: BoxDecoration(
                                borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                                color: AppColors.mainColor.withOpacity(0.3)),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 15, left: 0),
                      child: Text(
                        "8 Dec 2008",
                        textScaleFactor: 1.0,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Poppins",
                            color: AppColors.textColorCycle),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 15, left: 0),
                      child: Text(
                        "Symptoms & Mood",
                        textScaleFactor: 1.0,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Poppins",
                            color: AppColors.textColorCycle),
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.only(top: 15, left: 0),
                      child: Text(
                        "Health & Lifestyle",
                        textScaleFactor: 1.0,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Poppins",
                            color: AppColors.textColorCycle),
                      ),
                    ),
                  Text("Log your mood & symptoms"),
                    const Padding(
                      padding: EdgeInsets.only(top: 15, left: 0),
                      child: Text(
                        "Cycle day summay",
                        textScaleFactor: 1.0,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Poppins",
                            color: AppColors.textColorCycle),
                      ),
                    ),
                    Text("Day 14  Ovulation phase"),
                    const Padding(
                      padding: EdgeInsets.only(top: 15, left: 0),
                      child: Text(
                        "Notes",
                        textScaleFactor: 1.0,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Poppins",
                            color: AppColors.textColorCycle),
                      ),
                    ),

                    Text("Add Notes")

                  ],
                ),
              )
            ],
          );
        });
  }

  void logoutBottomSheet() {
    showModalBottomSheet(
        backgroundColor: AppColors.colorGrayDarkBg,
        context: navigatorKey.currentState!.context,
        isScrollControlled: true,
        builder: (context) {
          return Wrap(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom,
                    left: 10,
                    right: 10),
                decoration: const BoxDecoration(
                    color: AppColors.whiteColor,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(
                          0.0,
                          5.0,
                        ),
                        blurRadius: 1.0,
                        spreadRadius: .3,
                        color: AppColors.colorPrimary,
                        //   inset: true,
                      ),
                    ],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Container(
                          height: 6,
                          width: 46,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(top: 0),
                          decoration: BoxDecoration(
                              borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                              color: AppColors.mainColor.withOpacity(0.3)),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      HelperWidget().testMethodStartAlign(
                        14.0,
                        FontWeight.w500,
                        AppColors.colorPrimaryTestDarkMore,
                        "Account Logout",
                      ),
                      HelperWidget().testMethodStartAlign(
                        14.0,
                        FontWeight.w500,
                        AppColors.privacyPolicyText,
                        "Are you sure you want to logout?",
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: HelperWidget().testMethodStartAlign(
                                14.0,
                                FontWeight.w500,
                                AppColors.mainColor.withOpacity(0.3),
                                "Cancel",
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            GestureDetector(
                              onTap: () {

                              },
                              child: HelperWidget().testMethodStartAlign(
                                14.0,
                                FontWeight.w600,
                                AppColors.mainColor,
                                "Yes",
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        });
  }





}
