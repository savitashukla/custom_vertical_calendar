import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class CycleTrackController extends GetxController {
  late ItemScrollController cycleTrackScrollController = ItemScrollController();

  var initialIndexCycleTrack = (DateTime.now().year - 2023) * 12 + 12;
  var checkBoxValues = {}.obs; // Maintain separate state for each day
  var dayOfPeriods = "5".obs;
  var periodsCycleLength = "28".obs;

  List<String> periodsCycleLengthA = [
    "20",
    "21",
    "22",
    "23",
    "24",
    "25",
    "26",
    "27",
    "28",
    "29",
    "30",
    "31",
    "32",
    "33"
  ].obs;
  List<String> dayOfPeriodsA = ["1", "2", "3", "4", "5", "6", "7", "8"].obs;
  var waterContainerVolume = [
    "100 ml",
    "200 ml",
    "300 ml",
    "400 ml",
    "500 ml",
    "600 ml",
    "700 ml"
  ].obs;
  var selectedWaterInTakeVolume = "1 L".obs;
  var selectedIntervalTimeWater = "1 h".obs;
  var selectedWaterContainerVolume = "100 ml".obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  DateTime getDateStringCon(String dateString) {
    List<String> parts = dateString.split('-');

    // Add leading zeros to the month and day parts if needed
    String month = parts[1].padLeft(2, '0');
    String day = parts[2].padLeft(2, '0');

    // Create a new date string with leading zeros
    String formattedDateString = '${parts[0]}-$month-$day';

    // Parse the formatted date string into a DateTime object
    DateTime date = DateTime.parse(formattedDateString);
    return date;
  }

  Set<int> checkDateBelongsMonth(String dateString, mapData) {
    // Define the given date
    DateTime givenDate =
        getDateStringCon(dateString); // Example date: January 2, 2024

    // Get the current date
    DateTime currentDate = DateTime.now();

    // Extract the month and year components from the given date
    int givenMonth = givenDate.month;
    int givenYear = givenDate.year;

    // Extract the month and year components from the current date
    int currentMonth = currentDate.month;
    int currentYear = currentDate.year;

    // Calculate the previous month and the month before it
    int previousMonth = currentMonth - 1 <= 0 ? 12 : currentMonth - 1;
    int previousMonthYear =
        currentMonth - 1 <= 0 ? currentYear - 1 : currentYear;

    int twoMonthsAgo = previousMonth - 1 <= 0 ? 12 : previousMonth - 1;
    int twoMonthsAgoYear =
        previousMonth - 1 <= 0 ? previousMonthYear - 1 : previousMonthYear;

    // Compare the month and year components
    if (givenYear == currentYear && givenMonth == currentMonth) {
      mapData.add(1);
      debugPrint('The given date belongs to the current month.');
    } else if ((givenYear == currentYear && givenMonth == previousMonth)) {
      mapData.add(2);
      debugPrint(
          'The given date belongs to the previous month or two months ago.');
    }
    else if ((givenYear == twoMonthsAgoYear && givenMonth == twoMonthsAgo)) {
      mapData.add(3);
      debugPrint(
          'The given date belongs to the previous month or two months ago.');
    } else {
      debugPrint(
          'The given date is not in the current, previous, or next month.');
    }

    return mapData;
  }
}
