import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tajicEasy/constants/app_theme.dart';
import 'package:tajicEasy/ui/pages/home_page.dart';
import 'package:tajicEasy/ui/pages/mybookings/myBooking_page.dart';
import 'package:tajicEasy/ui/pages/rewards_page.dart';
import 'package:tajicEasy/ui/pages/userprofile/userProfile_page.dart';

class AppMain extends StatefulWidget {
  @override
  _AppMainState createState() => _AppMainState();
}

class _AppMainState extends State<AppMain> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      body: [
        HomePage(),
        MyBookingPage(),
        RewardsPage(),
        UserProfilePage(),
      ].elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,

        // fixedColor: Colors.red,
        unselectedItemColor: Colors.grey[800],
        selectedLabelStyle: GoogleFonts.poppins(fontSize: 40.ssp),
        selectedItemColor: AppTheme.PRIMARY_COLOR,

        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(FlutterIcons.ticket_ent),
            label: "My Booking",
          ),
          BottomNavigationBarItem(
            icon: Icon(FlutterIcons.coins_faw5s),
            label: "Rewards",
          ),
          BottomNavigationBarItem(
            icon: Icon(FlutterIcons.user_circle_faw5s),
            label: "My Account",
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
