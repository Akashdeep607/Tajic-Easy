import 'package:get/get.dart';
import 'package:tajicEasy/ui/widgets/bottomNavigationBar.dart';
import '../ui/init/init_export.dart';
import 'package:tajicEasy/ui/pages/mybookings/myBooking_page.dart';
import '../ui/auth/auth_export.dart';
import '../ui/pages/pages_export.dart';

class AppRoutes {
  AppRoutes._(); //this is to prevent anyone from instantiating this object
  static final routes = [
    // GetPage(name: '/', page: () => Login()),
    GetPage(name: '/', page: () => SplashScreen()),
    GetPage(name: '/onBoarding', page: () => OnBoardingPage()),
    GetPage(name: '/login', page: () => Login()),
    GetPage(name: '/signUp', page: () => SignUp()),
    GetPage(name: '/home', page: () => AppMain()),
    GetPage(name: '/source', page: () => SearchPage()),
    GetPage(name: '/myBooking', page: () => MyBookingPage(), maintainState: true),
    GetPage(name: '/bookingCompleted', page: () => BookingCompleted()),
    GetPage(name: '/bookingCancelled', page: () => BookingCancelled()),
    GetPage(name: '/reward', page: () => RewardsPage()),
    GetPage(name: '/userProfile', page: () => UserProfilePage()),
  ];
}
