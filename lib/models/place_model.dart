class PlaceModel {
  String placeId;
  String placeName;

  PlaceModel({this.placeId, this.placeName});

  PlaceModel.fromJson(Map<String, dynamic> json) {
    placeId = json['placeId'];
    placeName = json['placeName'];
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['name'] = this.name;
  //   return data;
  // }
}
