import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tajicEasy/constants/app_theme.dart';
import 'package:tajicEasy/ui/pages/home_page.dart';

class Destination extends StatefulWidget {
  // final String pickPlace;

  // const Destination({Key key, this.pickPlace}) : super(key: key);

  @override
  _DestinationState createState() => _DestinationState();
}

class _DestinationState extends State<Destination> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: _searchBar(),
      ),
      body: Column(
        //mainAxisAlignment:MainAxisAlignment.center,
        //crossAxisAlignment:CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.centerLeft,
            color: AppTheme.COLOR_DARK_BLUE,
            width: 1.sw,
            height: 0.07.sh,
            child: Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Text(
                "TOP PLACES",
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            width: 1.sw,
            height: 0.5.sh,
            // color: Colors.red,
            child: Padding(
              padding: EdgeInsets.only(top: 20.h),
              child: Container(
                child: Wrap(
                  runAlignment: WrapAlignment.start,
                  alignment: WrapAlignment.center,
                  children: [
                    _topLocation(
                      "Douala",
                      Icon(Icons.location_city),
                    ),
                    _topLocation(
                      "Yaoundé",
                      Icon(Icons.location_city),
                    ),
                    _topLocation(
                      "Bamenda",
                      Icon(Icons.location_city),
                    ),
                    _topLocation(
                      "Garoua",
                      Icon(Icons.location_city),
                    ),
                    _topLocation(
                      "Maroua",
                      Icon(Icons.location_city),
                    ),
                    _topLocation(
                      "Bafoussam",
                      Icon(Icons.location_city),
                    ),
                    _topLocation(
                      "Ngaoundéré",
                      Icon(Icons.location_city),
                    ),
                    _topLocation(
                      "Bertoua",
                      Icon(Icons.location_city),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _searchBar() {
    return Container(
      width: 0.9.sw,
      height: 0.06.sh,
      child: Row(
        //mainAxisAlignment:MainAxisAlignment.center,
        //crossAxisAlignment:CrossAxisAlignment.center,
        children: [
          Expanded(
            child: TextFormField(
              autofocus: true,
              style: TextStyle(color: Colors.white, fontSize: 50.ssp),
              decoration: InputDecoration(
                isDense: true,
                hintText: "Select Destination",
                hintStyle: TextStyle(color: Colors.white, fontSize: 50.ssp),
                fillColor: AppTheme.PRIMARY_COLOR,
                suffixIcon: IconButton(
                  splashRadius: 1.0,
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _topLocation(String placeName, Icon icon) {
    return Container(
      width: 0.4.sw,
      height: 0.08.sh,
      child: InkWell(
        splashColor: AppTheme.PRIMARY_COLOR,
        onTap: () {},
        child: GestureDetector(
          onTap: () {
            print("Pressed : $placeName");

            Get.toNamed('/home/$placeName');
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            //crossAxisAlignment:CrossAxisAlignment.center,
            children: [
              icon,
              SizedBox(width: 15.w),
              Text(
                placeName,
                style: TextStyle(fontSize: 45.ssp),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
