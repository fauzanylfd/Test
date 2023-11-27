import 'package:gopet/component/serviceModel.dart';

class foodModel {
  String name;
  String image;
  List<String> services;
  int distance;

  foodModel(
      {required this.name,
      required this.image,
      required this.services,
      required this.distance});
}

var foods = [
  foodModel(
      name: "Whiskas ",
      image: "assets/images/Dr. Stone.jpg",
      services: [Service.food],
      distance: 10),
  foodModel(
      name: "MEO ",
      image: "Dr. Stone.jpg",
      services: [Service.food],
      distance: 10),
  foodModel(
      name: "Catnip",
      image: "Dr. Stone.jpg",
      services: [Service.food ],
      distance: 10)
];