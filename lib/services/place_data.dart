import 'package:tajicEasy/models/place_model.dart';

class PlaceData {
  List<PlaceModel> getPlaces() {
    List<PlaceModel> place = List<PlaceModel>();
    PlaceModel placeModel = PlaceModel();

    placeModel.placeId = "1";
    placeModel.placeName = "Douala";
    place.add(placeModel);

    placeModel = PlaceModel();
    placeModel.placeId = "2";
    placeModel.placeName = "Yaoundé";
    place.add(placeModel);

    placeModel = PlaceModel();
    placeModel.placeId = "3";
    placeModel.placeName = "Bamenda";
    place.add(placeModel);

    placeModel = PlaceModel();
    placeModel.placeId = "4";
    placeModel.placeName = "Garoua";
    place.add(placeModel);

    placeModel = PlaceModel();
    placeModel.placeId = "5";
    placeModel.placeName = "Maroua";
    place.add(placeModel);

    placeModel = PlaceModel();
    placeModel.placeId = "6";
    placeModel.placeName = "Bafoussam";
    place.add(placeModel);

    placeModel = PlaceModel();
    placeModel.placeId = "7";
    placeModel.placeName = "Ngaoundéré";
    place.add(placeModel);

    placeModel = PlaceModel();
    placeModel.placeId = "8";
    placeModel.placeName = "Bertoua";
    place.add(placeModel);

    return place;
  }
}
