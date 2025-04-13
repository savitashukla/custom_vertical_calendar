import 'package:flutter/material.dart';
import '../precentation/page/new/all_year_show.dart';
import '../precentation/page/new/edit_calendar.dart';
import '../precentation/page/new/main_calendar.dart';

class Routes {
  // Route name constants
  static const String splash = 'splash';
  static const String splashMain = '/';
  static const String login = 'login';
  static const String intent = 'Intent';
  static const String onboardScreen = 'onboardScreen';
  static const String introSliderScreen = 'introSliderScreen';
  static const String otpScreen = 'otpScreen';
  static const String dashBoard = 'dashBoard';
  static const String register = 'register';
  static const String forgotPasswordScreen = 'forgotPasswordScreen';
  static const String changePasswordPage = 'changePasswordPage';
  static const String forgetPasswordOtpScreen = 'forgetPasswordOtpScreen';
  static const String calenderMain = 'calenderMain';
  static const String profileScreen = 'profileScreen'; //A
  static const String profileEditScreen = 'profileEditScreen'; //A
  static const String beSafeScreen = "beSafeScreen"; //A
  static const String contactListScreen = "ContactList"; //A
  static const String panicModeSetupScreen = "panicModeSetupScreen"; //A
  static const String addContactsScreen = "addContactsScreen"; //A
  static const String historyScreen = "historyScreen"; //A
  static const String contactListViewScreen = "contactListViewScreen"; //A
  static const String radiusMonitoringScreen = "radiusMonitoringScreen"; //A
  static const String settingsMainScreen = "settingsMainScreen"; //A
  static const String healthTrackingScreen = "healthTrackingScreen"; //A
  static const String notificationsScreen = "notificationScreen"; //A
  static const String remindersScreen = "remindersScreen"; //A
  static const String privacySecurityScreen = "privacySecurityScreen"; //A
  static const String appPreferencesScreen = "apppreferencesScreen"; //A
  static const String dataBackupScreen = "dataBackupScreen"; //A
  static const String healthLifestyleScreen = "healthLifestyleScreen"; //A
  static const String cycleReminderScreen = "cycleReminderScreen"; //A
  static const String beSafeReminderScreen = "beSafeReminderScreen"; //A
  static const String dateTimeScreen = "dateTimeScreen"; //A
  static const String applockTypeScreen = "applockTypeScreen"; //A
  static const String setAccessCodeScreen = "setAccessCodeScreen"; //A
  static const String symptomsAndMoodScreen = "symptomsAndMoodScreen"; //A
  static const String homeHealthLifestyleScreen =
      "homeHealthLifestyleScreen"; //A
  static const String addPillScreen = "addPillScreen"; //A
  static const String welcomePage = "welcomePage"; //A
  static const String myNotesScreen = "myNotesScreen"; //A
  static const String recycleBin = "recycleBin"; //A
  static const String addNewNotesScreen = "addNewNotesScreen"; //A
  static const String communityHomeScreen = "communityHomeScreen"; //A
  static const String communityCreatePostScreen =
      "communityCreatePostScreen"; //A
  static const String communityProfileScreen = "communityProfileScreen"; //A

  static const String cycleTrackFastScreen = 'cycleTrackFastScreen';
  static const String cycleTrackSecondPage = 'cycleTrackSecondPage';
  static const String menstrualFastScreen = 'menstrualFastScreen';
  static const String menstrualSecondScreen = 'menstrualSecondScreen';
  static const String menstrualThirdScreen = 'menstrualThirdScreen';
  static const String fertilityFast = 'fertilityFast';
  static const String fertilitySecond = 'fertilitySecond';
  static const String fertilityThird = 'fertilityThird';

  static const String healthQueryNutritionFast = 'healthQueryNutritionFast';
  static const String healthQueryNutritionSecond = 'healthQueryNutritionSecond';
  static const String healthQueryNutritionThird = 'healthQueryNutritionThird';

  static const String generalHealthFast = 'generalHealthFast';
  static const String generalHealthSecond = 'generalHealthSecond';
  static const String generalHealthThird = 'generalHealthThird';

  static const String screenHavingFast = 'screenHavingFast';
  static const String screenHavingSecond = 'screenHavingSecond';
  static const String screenHavingThird = 'screenHavingThird';
  static const String editCalendarMain = 'editCalendarMain';
  static const String waterLogManagement = 'waterLogManagement';
  static const String waterAnalytics = 'waterAnalytics';
  static const String weightAnalysis = 'weightAnalysis';
  static const String calanderViewNote = 'calanderViewNote';
  static const String createContact = 'createContact';
  static const String saveInsights = 'saveInsights';
  static const String viewInsights = 'viewInsights';
  static const String searchPage = 'searchPage';
  static const String insightNotification = 'insightNotification';
  static const String communityEditProfile = 'communityEditProfile';
  static const String communityCreatePolls = 'communityCreatePolls';
  static const String followerscreen = 'followerscreen';
  static const String securityBioM = 'SecurityBioM';
  static const String privacyPolicy = 'privacyPolicy';
  static const String communityNotification = 'communityNotification';
  static const String termsNConditionsPrivacy = 'TermsNConditionsPrivacy';
  static const String cycleSummary = 'cycleSummary';
  static const String dobScreen = "dobScreen";
  static const String applicationScreen = "applicationScreen";
  static const String cycleDetailsScreen = "cycleDetailsScreen";
  static const String cycleHistoryScreen = "cycleHistoryScreen";
  static const String allYearCalendar = "allYearCalendar";

  /// The map used to define our routes, needs to be supplied to [MaterialApp]
  static Route<dynamic> getRoutes(RouteSettings setting) {
    switch (setting.name) {
      case calenderMain:
        return MaterialPageRoute(builder: (context) => const CalenderMain());

      case editCalendarMain:
        return MaterialPageRoute(builder: (context) => EditCalendar());

      case allYearCalendar:
        return MaterialPageRoute(builder: (context) => AllYearCalendar());

      default:
        throw const FormatException('Route not found! Check routes again');
    }
  }

  static PageRouteBuilder buildPageRoute(Widget page) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.easeInOut;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var offsetAnimation = animation.drive(tween);

        return SlideTransition(position: offsetAnimation, child: child);
      },
    );
  }

  static PageRouteBuilder withoutAnimation(Widget page) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        // Return an empty transition to disable animation
        return child;
      },
    );
  }

  static PageRouteBuilder slideTransition(Widget page) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(-1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.easeInOut;
        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var offsetAnimation = animation.drive(tween);
        return SlideTransition(position: offsetAnimation, child: child);
      },
    );
  }
}
