import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tajicEasy/constants/app_theme.dart';
import 'package:tajicEasy/models/onBoarding_model.dart';
import 'package:tajicEasy/ui/pages/home_page.dart';

import 'mySharedPreferences.dart';
import 'onBoardingSlider.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  PageController pageController = PageController(initialPage: 0);
  List<OnBoardingModel> _slides = List<OnBoardingModel>();
  int currentIndex = 0;

  @override
  void initState() {
    _slides = getOnBoardingData();
    super.initState();
    MySharedPreferences.instance.setBooleanValue("firstTimeOpen", true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: pageController,
        onPageChanged: (val) {
          setState(() {
            currentIndex = val;
          });
        },
        itemCount: _slides.length,
        itemBuilder: (context, index) {
          return OnBoardingSlider(
            imagePath: _slides[index].getImagePath(),
            title: _slides[index].getTitle(),
            description: _slides[index].getDesc(),
          );
        },
      ),
      bottomSheet: currentIndex != _slides.length - 1
          ? Container(
              color: AppTheme.PRIMARY_COLOR,
              height: 50.0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //crossAxisAlignment:CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        pageController.animateToPage(_slides.length - 1,
                            duration: Duration(milliseconds: 400), curve: Curves.linear);
                      },
                      child: Text(
                        "SKIP >>>",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                    Row(
                      children: [
                        for (int i = 0; i < _slides.length; i++)
                          currentIndex == i ? pageIndicator(true) : pageIndicator(false)
                      ],
                    ),
                    InkWell(
                        onTap: () {
                          pageController.animateToPage(currentIndex + 1,
                              duration: Duration(milliseconds: 400), curve: Curves.linear);
                        },
                        child: Text(
                          "NEXT",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2
                              .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
                        )),
                  ],
                ),
              ),
            )
          : InkWell(
              onTap: () {
                Get.offAll(HomePage());
              },
              child: Container(
                alignment: Alignment.center,
                color: AppTheme.PRIMARY_COLOR,
                width: double.infinity,
                height: 50,
                child: Text(
                  "<<< GET STARTED >>>",
                  style: Theme.of(context).textTheme.bodyText2.copyWith(color: Colors.white),
                ),
              ),
            ),
    );
  }

  Widget pageIndicator(bool isCurrent) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.0),
      height: isCurrent ? 10.0 : 6.0,
      width: isCurrent ? 10.0 : 6.0,
      decoration: BoxDecoration(
          color: isCurrent ? Colors.black : Colors.grey[300],
          borderRadius: BorderRadius.circular(12)),
    );
  }
}
