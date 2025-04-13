import 'package:get/get.dart';
import 'package:intl/intl.dart';

class NewCalendarController extends GetxController {
  var selectedMonth = DateTime.now().obs;
  var selectedDay = DateTime.now().obs;

  var editCalendarClick = false.obs;
  var isYearView = false.obs;
  var checkBoxValues = {}.obs; // Maintain separate state for each day

  var pregnancyTimeGood = {};
  var periodsTimeGoing = {};
  var pregnancyTimeGoing = {};

  var selectedItem = ''.obs;

  void changeMonth(int offset) {
    selectedMonth.value = DateTime(
      selectedMonth.value.year,
      selectedMonth.value.month + offset,
      selectedMonth.value.day,
    );
  }

  String formatMonthYear(DateTime dateTime) {
    return DateFormat('MMMM yyyy').format(dateTime);
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fillAllDataStatic();
  }

// jan month view
  void fillAllDataStatic() {
    //jan
    pregnancyTimeGoing["202513"] = 3;
    pregnancyTimeGoing["202514"] = 4;
    pregnancyTimeGoing["202516"] = 6;
    pregnancyTimeGoing["202517"] = 7;
    pregnancyTimeGood["202515"] = 5;
    periodsTimeGoing["2025121"] = 21;
    periodsTimeGoing["2025122"] = 22;
    periodsTimeGoing["2025123"] = 23;
    periodsTimeGoing["2025124"] = 24;
    periodsTimeGoing["2025125"] = 25;

// fev
    pregnancyTimeGoing["202526"] = 6;
    pregnancyTimeGoing["202527"] = 7;
    pregnancyTimeGoing["202529"] = 9;
    pregnancyTimeGoing["2025210"] = 10;
    pregnancyTimeGood["202528"] = 8;
    periodsTimeGoing["2025223"] = 23;
    periodsTimeGoing["2025224"] = 24;
    periodsTimeGoing["2025225"] = 25;
    periodsTimeGoing["2025226"] = 26;
    periodsTimeGoing["2025227"] = 27;
  }
}
