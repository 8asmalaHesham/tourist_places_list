import 'package:tourist_places/models/tourist_place.dart';



class TouristPlaceViewModel {
  final List<TouristPlace> places = [
    TouristPlace(name: "Pyramids of Giza", country: "Egypt", imagePath: "assets/pyramids.jpg"),
    TouristPlace(name: "Statue of Liberty", country: "USA", imagePath: "assets/liberty.jpg"),
    TouristPlace(name: "Eiffel Tower", country: "France", imagePath: "assets/eiffel.jpg"),
    TouristPlace(name: "Colosseum", country: "Italy", imagePath: "assets/italy.jpg"),
    TouristPlace(name: "Taj Mahal", country: "India", imagePath: "assets/india.jpg"),
  ];
}
