import 'package:custom_vertical_calendar/precentation/page/new/year_month_show.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../../resources/app_colors.dart';
import '../../controller/calendar_controller.dart';

class AllYearCalendar extends StatefulWidget {
  const AllYearCalendar({super.key});

  @override
  State<AllYearCalendar> createState() => _AllYearCalendarState();
}

class _AllYearCalendarState extends State<AllYearCalendar> {
  CalendarController controllerCalendar = Get.put(CalendarController());

  int currentMonth = DateTime.now().month;

  @override
  Widget build(BuildContext context) {
    return ScrollablePositionedList.builder(
      itemScrollController: controllerCalendar.allYearShowList,
      itemCount: controllerCalendar.allYearCount,
      physics: const BouncingScrollPhysics(),
      // Set the physics property

      initialScrollIndex: controllerCalendar.allYearListInitial,
      itemBuilder: (context, yearIndex) {
        int displayYear = 1970 + yearIndex;
        return Column(
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 10, top: 10),
              child: Text(
                '$displayYear',
                style: const TextStyle(
                    color: AppColors.textColorCycle,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400),
              ),
            ),
            MonthListView(currentYear: displayYear, currentMonth: currentMonth),

            const SizedBox(height: 1.0), // Add spacing between years
          ],
        );
      },
    );
  }
}
