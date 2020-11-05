class OnBoardingModel {
  String imagePath;
  String title;
  String desc;

  OnBoardingModel({this.imagePath, this.title, this.desc});
// Setting the values
  void setImagePath(String getimagePath) {
    imagePath = getimagePath;
  }

  void setTitle(String getTitle) {
    title = getTitle;
  }

  void setDesc(String getDesc) {
    desc = getDesc;
  }

  // Returning the values
  String getImagePath() => imagePath;
  String getTitle() => title;
  String getDesc() => desc;
}

List<OnBoardingModel> getOnBoardingData() {
  List<OnBoardingModel> slides = List<OnBoardingModel>();
  OnBoardingModel onBoardingModel = OnBoardingModel();

  // 1
  onBoardingModel.setImagePath("assets/images/onBoardingImg3.png");
  onBoardingModel.setTitle("TRAVEL WITH US");
  onBoardingModel.setDesc("Now you can travel to your favourite places anytime on a click");
  slides.add(onBoardingModel);

  // 2
  onBoardingModel = OnBoardingModel();
  onBoardingModel.setImagePath("assets/images/onBoardingImg2.png");
  onBoardingModel.setTitle("DESTINATION");
  onBoardingModel.setDesc("We make you choosing your destination point easy");
  slides.add(onBoardingModel);

  // 3
  onBoardingModel = OnBoardingModel();
  onBoardingModel.setImagePath("assets/images/onBoardingImg1.png");
  onBoardingModel.setTitle("EASY BOOKING");
  onBoardingModel.setDesc(
      "Book buses with an ease, no more waiting, now you can book your bus ticket in your mobile ");
  slides.add(onBoardingModel);

  return slides;
}
